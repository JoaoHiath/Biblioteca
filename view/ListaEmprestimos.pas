unit ListaEmprestimos;

interface

uses
  cadastroEmprestimo, Model.Emprestimo, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmListaEmprestimos = class(TForm)
    pnlControlesLivros: TPanel;
    btnExcluir: TButton;
    btnEditar: TButton;
    btnAdicionar: TButton;
    lstEmprestimos: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    class procedure AbrirListaEmprestimos(pOwner: TComponent);
  end;

var
  frmListaEmprestimos: TfrmListaEmprestimos;

implementation

{$R *.dfm}

uses

  Controller.Emprestimo, Factory.Emprestimo;

var

  FController: TEmprestimoController;

class procedure TfrmListaEmprestimos.AbrirListaEmprestimos(pOwner: TComponent);
begin
  var lfrmListaEmprestimos := TfrmListaEmprestimos.Create(pOwner);

  try
    lfrmListaEmprestimos.ShowModal;
  finally
    lfrmListaEmprestimos.Free;
  end;
end;

procedure TfrmListaEmprestimos.btnAdicionarClick(Sender: TObject);
begin
  TfrmCadastroEmprestimo.AdicionarEmprestimo(nil);
end;

procedure TfrmListaEmprestimos.FormCreate(Sender: TObject);
begin
  FController := TEmprestimoFactory.criarController(self);
end;

procedure TfrmListaEmprestimos.FormDestroy(Sender: TObject);
begin
  FController.Free;
end;

procedure TfrmListaEmprestimos.FormShow(Sender: TObject);
begin
  FController.ObterEmprestimos(lstEmprestimos);
end;

end.
