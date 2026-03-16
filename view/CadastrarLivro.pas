unit CadastrarLivro;

interface

uses
   Model.Livro, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.NumberBox;

type
  TfrmCadastrarLivro = class(TForm)
    pnlCadastrarLivroPrincipal: TPanel;
    lblTitulo_CadastrarLivros: TLabel;
    edtTitulo_CadastrarLivros: TEdit;
    lblAutor_CadastrarLivros: TLabel;
    edtAutor_CadastrarLivros: TEdit;
    edtEditora_CadastrarLivros: TEdit;
    lblEditora_CadastrarLivros: TLabel;
    lblQntddTotal_CadastrarLivros: TLabel;
    lblQuantidadeDisponivel: TLabel;
    lblISBN_CadastrarLivros: TLabel;
    edtISBN_CadastrarLivros: TEdit;
    pnlCadastrarLivroNome: TPanel;
    shpConfirmar_CadastrarLivros: TShape;
    sbtnConfirmar_CadastrarLivros: TSpeedButton;
    shpCancelar_CadastrarLivros: TShape;
    sbtnCancelar_CadastrarLivros: TSpeedButton;
    lblCategorial_CadastrarLivros: TLabel;
    edtCategoria_CadastrarLivros: TEdit;
    edtQntddTotal_CadastrarLivros: TNumberBox;
    edtQntddDisponivel_CadastrarLivros: TNumberBox;
    lblCadastrarLivro: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure sbtnConfirmar_CadastrarLivrosClick(Sender: TObject);
    procedure sbtnCancelar_CadastrarLivrosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NovoLivro(pOwner: TComponent);
    class procedure EditarLivro(pOwner: TComponent; PLivro: TLivroModel);
  end;

var
  frmCadastrarLivro: TfrmCadastrarLivro;

implementation

{$R *.dfm}

uses

  Controller.Livro, Factory.Livro;

  var

  FController: TLivroController;
  FLivro : TLivroModel;

class procedure TfrmCadastrarLivro.NovoLivro(pOwner: TComponent);
begin
  var lfrmCadastroLivro := TfrmCadastrarLivro.Create(pOwner);

  try
    lfrmCadastroLivro.ShowModal;
  finally
    lfrmCadastroLivro.Free;
  end;
end;

procedure TfrmCadastrarLivro.sbtnCancelar_CadastrarLivrosClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCadastrarLivro.sbtnConfirmar_CadastrarLivrosClick(
  Sender: TObject);
begin
    try
    try
      if sbtnConfirmar_CadastrarLivros.Caption = 'Confirmar' then
        FLivro := TLivroModel.Create;

      FLivro.Titulo := edtTitulo_CadastrarLivros.Text;
      FLivro.Autor := edtAutor_CadastrarLivros.Text;
      FLivro.Editora := edtEditora_CadastrarLivros.Text;
      FLivro.categoria := edtCategoria_CadastrarLivros.Text;
      FLivro.QuantidadeDisponivel := StrToIntDef(edtQntddDisponivel_CadastrarLivros.Text, 0);
      FLivro.QuantidadeTotal := StrToIntDef(edtQntddTotal_CadastrarLivros .Text, 0);
      FLivro.IdentificacaoISBN := edtISBN_CadastrarLivros.Text;

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

class procedure TfrmCadastrarLivro.EditarLivro(pOwner: TComponent;
  PLivro: TLivroModel);
begin
  var lfrmCadastroLivro := TfrmCadastrarLivro.Create(pOwner);

  FLivro := pLivro;

  lfrmCadastroLivro.edtTitulo_CadastrarLivros.Text := FLivro.Titulo;
  lfrmCadastroLivro.edtAutor_CadastrarLivros.Text := FLivro.Autor;
  lfrmCadastroLivro.edtEditora_CadastrarLivros.Text := FLivro.Editora;
  lfrmCadastroLivro.edtCategoria_CadastrarLivros.Text := FLivro.categoria;
  lfrmCadastroLivro.edtISBN_CadastrarLivros.Text := FLivro.IdentificacaoISBN;
  lfrmCadastroLivro.edtQntddTotal_CadastrarLivros.Text :=  IntToStr(FLivro.QuantidadeDisponivel);
  lfrmCadastroLivro.edtQntddDisponivel_CadastrarLivros.Text := IntToStr(FLivro.QuantidadeTotal);

  try
    lfrmCadastroLivro.sbtnConfirmar_CadastrarLivros.Caption := 'Editar';
    lfrmCadastroLivro.ShowModal;
    finally
    lfrmCadastroLivro.Free;
  end;
end;

procedure TfrmCadastrarLivro.FormCreate(Sender: TObject);
begin
  FController := TLivroFactory.criarController(self);
end;

procedure TfrmCadastrarLivro.FormDestroy(Sender: TObject);
begin
  FController.Free;
end;

end.
