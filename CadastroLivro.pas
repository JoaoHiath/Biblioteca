unit CadastroLivro;

interface

uses
  Model.Livro, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmCadastroLivro = class(TForm)
    pnlCadastroLivro: TPanel;
    pnlEscolhas: TPanel;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    lblInformacoes: TLabel;
    gpnlInfo: TGridPanel;
    lblQuantidadeDisponível: TLabel;
    edtQuantidadeDisponivel: TEdit;
    lblQuantidadeTotal: TLabel;
    edtQuantidadeTotal: TEdit;
    lblTitulo: TLabel;
    edtTitulo: TEdit;
    GridPanel1: TGridPanel;
    lblAutor: TLabel;
    edtAutor: TEdit;
    lblEditora: TLabel;
    edtEditora: TEdit;
    lblCategoria: TLabel;
    edtCategoria: TEdit;
    lblISBN: TLabel;
    edtISBN: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    class procedure NovoLivro(pOwner: TComponent);
    class procedure EditarLivro(pOwner: TComponent; PLivro: TLivroModel);
  end;

var
  frmCadastroLivro: TfrmCadastroLivro;

implementation

{$R *.dfm}

{ TForm3 }

uses

  Controller.Livro, Factory.Livro;

  var

  FController: TLivroController;
  FLivro : TLivroModel;

procedure TfrmCadastroLivro.btnConfirmarClick(Sender: TObject);
begin

  try
    try
      if btnConfirmar.Caption = 'Confirmar' then
        FLivro := TLivroModel.Create;

      FLivro.Titulo := edtTitulo.Text;
      FLivro.Autor := edtAutor.Text;
      FLivro.Editora := edtEditora.Text;
      FLivro.categoria := edtCategoria.Text;
      FLivro.QuantidadeDisponivel := StrToIntDef(edtQuantidadeDisponivel.Text, 0);
      FLivro.QuantidadeTotal := StrToIntDef(edtQuantidadeTotal.Text, 0);
      FLivro.IdentificacaoISBN := edtISBN.Text;

      FController.Salvar(FLivro);
      ModalResult := mrOk;
    except
      on E : exception do
        ShowMessage(E.Message);
    end;
  finally
    FLivro.Free;
  end;
end;

class procedure TfrmCadastroLivro.EditarLivro(pOwner: TComponent;
  pLivro: TLivroModel);
begin
    var lfrmCadastroLivro := TfrmCadastroLivro.Create(pOwner);

  FLivro := pLivro;

  lfrmCadastroLivro.edtTitulo.Text := FLivro.Titulo;
  lfrmCadastroLivro.edtAutor.Text := FLivro.Autor;
  lfrmCadastroLivro.edtEditora.Text := FLivro.Editora;
  lfrmCadastroLivro.edtCategoria.Text := FLivro.categoria;
  lfrmCadastroLivro.edtISBN.Text := FLivro.IdentificacaoISBN;
  lfrmCadastroLivro.edtQuantidadeDisponivel.Text :=  IntToStr(FLivro.QuantidadeDisponivel);
  lfrmCadastroLivro.edtQuantidadeTotal.Text := IntToStr(FLivro.QuantidadeTotal);

  try
    lfrmCadastroLivro.btnConfirmar.Caption := 'Editar';
    lfrmCadastroLivro.ShowModal;
    finally
    lfrmCadastroLivro.Free;
  end;
end;

procedure TfrmCadastroLivro.FormCreate(Sender: TObject);
begin
  FController := TLivroFactory.criarController(nil);
end;

procedure TfrmCadastroLivro.FormDestroy(Sender: TObject);
begin
 FController.Free;
end;

class procedure TfrmCadastroLivro.NovoLivro(pOwner: TComponent);
begin
  var lfrmCadastroLivro := TfrmCadastroLivro.Create(pOwner);
  try
    lfrmCadastroLivro.ShowModal;
  finally
    lfrmCadastroLivro.Free;
  end;
end;

end.
