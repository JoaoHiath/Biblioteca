unit ListaLivros;

interface

uses
  Model.Livro, CadastroLivro,Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrmListaLivros = class(TForm)
    pnlControlesLivros: TPanel;
    btnExcluir: TButton;
    btnEditar: TButton;
    btnAdicionar: TButton;
    DataSource1: TDataSource;
    lstLivros: TListBox;
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Excluir(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    class procedure AbrirListaLivros(pOwner: TComponent);
  end;

var
  frmListaLivros: TfrmListaLivros;

implementation

{$R *.dfm}

uses

  Controller.Livro, Factory.Livro;

var

  FController: TLivroController;

class procedure TfrmListaLivros.AbrirListaLivros(pOwner: TComponent);
begin
  var lfrmListaLivros := TfrmListaLivros.Create(pOwner);

  try
    lfrmListaLivros.ShowModal;
  finally
    lfrmListaLivros.Free;
  end;
end;

procedure TfrmListaLivros.btnAdicionarClick(Sender: TObject);
begin
  TfrmCadastroLivro.NovoLivro(self);
  FController.ObterLivros(lstLivros);
end;

procedure TfrmListaLivros.btnEditarClick(Sender: TObject);
begin
  var Livro: TLivroModel;

  if lstLivros.ItemIndex = -1 then
  Exit;


  Livro := TLivroModel(lstLivros.Items.Objects[lstLivros.ItemIndex]);

  TfrmCadastroLivro.EditarLivro(self, Livro);
  FController.ObterLivros(lstLivros);
end;

procedure TfrmListaLivros.FormCreate(Sender: TObject);
begin
  FController := TLivroFactory.criarController(self);
end;

procedure TfrmListaLivros.FormDestroy(Sender: TObject);
begin
  FController.Free;
end;

procedure TfrmListaLivros.FormShow(Sender: TObject);
begin
  FController.ObterLivros(lstLivros);
end;

procedure TfrmListaLivros.Excluir(Sender: TObject);
begin
  var Livro: TLivroModel;

  if lstLivros.ItemIndex = -1 then
    Exit;

  Livro := TLivroModel(lstLivros.Items.Objects[lstLivros.ItemIndex]);
  FController.Excluir(Livro.id);

  FController.ObterLivros(lstLivros);
end;

end.
