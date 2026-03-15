unit ListaEmprestimos;

interface

uses
  DataRenovacao, DataDevolucao, cadastroEmprestimo, Model.Emprestimo, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmListaEmprestimos = class(TForm)
    panel: TPanel;
    btnExcluir: TButton;
    btnDevolver: TButton;
    btnAdicionar: TButton;
    lstEmprestimos: TListBox;
    pnlFiltro: TPanel;
    lblLivroFiltro: TLabel;
    cbxLivroFiltro: TComboBox;
    lblSituação: TLabel;
    rgpStatus: TRadioGroup;
    btnRenovar: TButton;
    RadioButton1: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure cbxLivroFiltroSelect(Sender: TObject);
    procedure rgpStatusClick(Sender: TObject);
    procedure btnDevolverClick(Sender: TObject);
    procedure btnRenovarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
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

  Model.Livro, Controller.Emprestimo, Controller.Livro, Factory.Livro, Factory.Emprestimo;

var

  FControllerEmprestimos: TEmprestimoController;
  FControllerLivro : TLivroController;

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

procedure TfrmListaEmprestimos.btnDevolverClick(Sender: TObject);
begin
  var emprestimo : TEmprestimoModel;

  emprestimo := TEmprestimoModel(lstEmprestimos.Items.Objects[lstEmprestimos.ItemIndex]);

  if emprestimo.Status = 'Devolvido' then
    raise Exception.Create('O livro selecionado já foi devolvido.');

  TfrmDevolucao.RegistrarDevolucao(self, emprestimo);
  FControllerEmprestimos.ObterEmprestimos(lstEmprestimos);
end;

procedure TfrmListaEmprestimos.btnExcluirClick(Sender: TObject);
begin
  var Emprestimo: TEmprestimoModel;

  if lstEmprestimos.ItemIndex = -1 then
    exit;

  Emprestimo := TEmprestimoModel(lstEmprestimos.Items.Objects[lstEmprestimos.ItemIndex]);
  FControllerEmprestimos.Excluir(Emprestimo.Id);
  FControllerEmprestimos.ObterEmprestimos(lstEmprestimos);
end;

procedure TfrmListaEmprestimos.btnRenovarClick(Sender: TObject);
begin
  var emprestimo : TEmprestimoModel;

  emprestimo := TEmprestimoModel(lstEmprestimos.Items.Objects[lstEmprestimos.ItemIndex]);

  if emprestimo.Status = 'Devolvido' then
    raise Exception.Create('O livro selecionado já foi devolvido.');

  TfrmRenovacao.RenovarEmprestimo(self, emprestimo);
  FControllerEmprestimos.ObterEmprestimos(lstEmprestimos);
end;

procedure TfrmListaEmprestimos.cbxLivroFiltroSelect(Sender: TObject);
begin
  var Livro := TLivroModel(cbxLivroFiltro.Items.Objects[cbxLivroFiltro.ItemIndex]);
  var idLivro := IntToStr(Livro.id);

  FControllerEmprestimos.ObterEmprestimosFiltroLivro(lstEmprestimos, idLivro, rgpStatus.Items[rgpStatus.ItemIndex]);
end;

procedure TfrmListaEmprestimos.FormCreate(Sender: TObject);
begin
  FControllerLivro := TLivroFactory.criarController(self);
  FControllerEmprestimos := TEmprestimoFactory.criarController(self);
end;

procedure TfrmListaEmprestimos.FormDestroy(Sender: TObject);
begin
  FControllerLivro.Free;
  FControllerEmprestimos.Free;
end;

procedure TfrmListaEmprestimos.FormShow(Sender: TObject);
begin
  FControllerLivro.ObterLivros(cbxLivroFiltro);
  FControllerEmprestimos.ObterEmprestimos(lstEmprestimos);
end;

procedure TfrmListaEmprestimos.rgpStatusClick(Sender: TObject);
begin
  if (cbxLivroFiltro.ItemIndex = -1) then
    raise Exception.Create('Selecione um livro');

  var Livro := TLivroModel(cbxLivroFiltro.Items.Objects[cbxLivroFiltro.ItemIndex]);
  var idLivro := IntToStr(Livro.id);

  FControllerEmprestimos.ObterEmprestimosFiltroLivro(lstEmprestimos, idLivro, rgpStatus.Items[rgpStatus.ItemIndex]);
end;

end.
