unit TelaPrincipalNew;

interface

uses
  DataRenovacao, DataDevolucao, CadastrarLocacao, CadastrarLocatario, CadastrarLivro, Model.Cliente, Model.Livro, Model.Emprestimo,Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons;

type
  TfrmTelaPrincipalNew = class(TForm)
    pgcPrincipal: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    imglPrincipal: TImageList;
    pnlCliente: TPanel;
    pnlLocacoesNome: TPanel;
    pnlLivros: TPanel;
    lblLocatarioNome: TLabel;
    Label1: TLabel;
    lblLocacoes: TLabel;
    lstEmprestimos: TListBox;
    lstLivros: TListBox;
    lstClientes: TListBox;
    shpAlugar_Locacoes: TShape;
    shpDevolver_Locacoes: TShape;
    shpRenovar_Locacoes: TShape;
    sbtnAlugar_Locacoes: TSpeedButton;
    sbtnDevolver_Locacoes: TSpeedButton;
    sbtnRenovar_Locacoes: TSpeedButton;
    cbxLivroFiltro: TComboBox;
    lblLivro: TLabel;
    shoExcluir_Locacoes: TShape;
    sbtnExcluir_Locacoes: TSpeedButton;
    lblSituação: TLabel;
    rbnEmprestado_Locacoes: TRadioButton;
    rbtnDevolvido_Locacoes: TRadioButton;
    shpCadastrar_Livros: TShape;
    shpEditar_Livros: TShape;
    sbtnAdicionar_Livros: TSpeedButton;
    sbtnEditar_Livros: TSpeedButton;
    shpExcluir_Livros: TShape;
    SpeedButton3: TSpeedButton;
    shpAdicionar_Locatario: TShape;
    shpEditar_Locatario: TShape;
    sbtnAdicionar_Locatario: TSpeedButton;
    sbtEditar_Locatario: TSpeedButton;
    shpExcluir_Locatario: TShape;
    sbtnExcluir_Locatario: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure sbtnExcluir_LocatarioClick(Sender: TObject);
    procedure sbtnAdicionar_LocatarioClick(Sender: TObject);
    procedure sbtEditar_LocatarioClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure sbtnAdicionar_LivrosClick(Sender: TObject);
    procedure sbtnEditar_LivrosClick(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure cbxLivroFiltroSelect(Sender: TObject);
    procedure sbtnAlugar_LocacoesClick(Sender: TObject);
    procedure sbtnDevolver_LocacoesClick(Sender: TObject);
    procedure sbtnRenovar_LocacoesClick(Sender: TObject);
    procedure sbtnExcluir_LocacoesClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure rbnEmprestado_LocacoesClick(Sender: TObject);
    procedure rbtnDevolvido_LocacoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaPrincipalNew: TfrmTelaPrincipalNew;

implementation

{$R *.dfm}

uses

  Controller.Cliente, Controller.Livro, Controller.Emprestimo,Factory.Cliente,Factory.Livro,Factory.Emprestimo;


var

  FControllerCliente: TClienteController;
  FControllerLivro: TLivroController;
  FControllerEmprestimos: TEmprestimoController;

procedure TfrmTelaPrincipalNew.cbxLivroFiltroSelect(Sender: TObject);
begin
    var Livro := TLivroModel(cbxLivroFiltro.Items.Objects[cbxLivroFiltro.ItemIndex]);
    var idLivro := IntToStr(Livro.id);
    var Situacao : string;

    if rbnEmprestado_Locacoes.Checked = true then
      Situacao := 'Emprestado'
    else if rbtnDevolvido_Locacoes.Checked = true then
      Situacao := 'Devolvido';



    FControllerEmprestimos.ObterEmprestimosFiltroLivro(lstEmprestimos, idLivro, Situacao);
end;

procedure TfrmTelaPrincipalNew.FormCreate(Sender: TObject);
begin
  FControllerCliente := TClienteFactory.criarController(self);
  FControllerLivro := TLivroFactory.criarController(self);
  FControllerEmprestimos := TEmprestimoFactory.criarController(self);
end;

procedure TfrmTelaPrincipalNew.FormDestroy(Sender: TObject);
begin
  FControllerCliente.Free;
  FControllerLivro.Free;
  FControllerEmprestimos.Free;
end;

procedure TfrmTelaPrincipalNew.rbnEmprestado_LocacoesClick(Sender: TObject);
begin
  if (cbxLivroFiltro.ItemIndex = -1) then
    raise Exception.Create('Selecione um livro');

      var Livro := TLivroModel(cbxLivroFiltro.Items.Objects[cbxLivroFiltro.ItemIndex]);
    var idLivro := IntToStr(Livro.id);
    var Situacao : string;

    if rbnEmprestado_Locacoes.Checked = true then
      Situacao := 'Emprestado'
    else if rbtnDevolvido_Locacoes.Checked = true then
      Situacao := 'Devolvido';

    FControllerEmprestimos.ObterEmprestimosFiltroLivro(lstEmprestimos, idLivro, Situacao);
end;

procedure TfrmTelaPrincipalNew.rbtnDevolvido_LocacoesClick(Sender: TObject);
begin
  if (cbxLivroFiltro.ItemIndex = -1) then
    raise Exception.Create('Selecione um livro');

      var Livro := TLivroModel(cbxLivroFiltro.Items.Objects[cbxLivroFiltro.ItemIndex]);
    var idLivro := IntToStr(Livro.id);
    var Situacao : string;

    if rbnEmprestado_Locacoes.Checked = true then
      Situacao := 'Emprestado'
    else if rbtnDevolvido_Locacoes.Checked = true then
      Situacao := 'Devolvido';

    FControllerEmprestimos.ObterEmprestimosFiltroLivro(lstEmprestimos, idLivro, Situacao);
end;

procedure TfrmTelaPrincipalNew.sbtEditar_LocatarioClick(Sender: TObject);
begin
  var Cliente: TClienteModel;

  if lstClientes.ItemIndex = -1 then
  Exit;


  Cliente := TClienteModel(lstClientes.Items.Objects[lstClientes.ItemIndex]);

  TfrmCadastrarLocatario.EditarCliente(self, Cliente);
  FControllerCliente.ObterClientes(lstClientes);
end;

procedure TfrmTelaPrincipalNew.sbtnAdicionar_LivrosClick(Sender: TObject);
begin
  TfrmCadastrarLivro.NovoLivro(self);
  FControllerLivro.ObterLivros(lstLivros);
end;

procedure TfrmTelaPrincipalNew.sbtnAdicionar_LocatarioClick(Sender: TObject);
begin
  TfrmCadastrarLocatario. AdicionarCliente(self);
  FControllerCliente.ObterClientes(lstClientes);
end;

procedure TfrmTelaPrincipalNew.sbtnAlugar_LocacoesClick(Sender: TObject);
begin
  TfrmCadastrarLocacao.AdicionarEmprestimo(self);
end;

procedure TfrmTelaPrincipalNew.sbtnDevolver_LocacoesClick(Sender: TObject);
begin
  var emprestimo : TEmprestimoModel;

  emprestimo := TEmprestimoModel(lstEmprestimos.Items.Objects[lstEmprestimos.ItemIndex]);

  if emprestimo.Status = 'Devolvido' then
    raise Exception.Create('O livro selecionado já foi devolvido.');

  TfrmDevolucao.RegistrarDevolucao(self, emprestimo);
  FControllerEmprestimos.ObterEmprestimos(lstEmprestimos);
end;

procedure TfrmTelaPrincipalNew.sbtnEditar_LivrosClick(Sender: TObject);
begin
  var Livro: TLivroModel;

  if lstLivros.ItemIndex = -1 then
  Exit;


  Livro := TLivroModel(lstLivros.Items.Objects[lstLivros.ItemIndex]);

  TfrmCadastrarLivro.EditarLivro(self, Livro);
  FControllerLivro.ObterLivros(lstLivros);
end;

procedure TfrmTelaPrincipalNew.sbtnExcluir_LocacoesClick(Sender: TObject);
begin
  var Emprestimo: TEmprestimoModel;

  if lstEmprestimos.ItemIndex = -1 then
    exit;

  Emprestimo := TEmprestimoModel(lstEmprestimos.Items.Objects[lstEmprestimos.ItemIndex]);
  FControllerEmprestimos.Excluir(Emprestimo.Id);
  FControllerEmprestimos.ObterEmprestimos(lstEmprestimos);
end;

procedure TfrmTelaPrincipalNew.sbtnExcluir_LocatarioClick(Sender: TObject);
begin
  var Cliente: TClienteModel;

  if lstClientes.ItemIndex = -1 then
    Exit;

  Cliente := TClienteModel(lstClientes.Items.Objects[lstClientes.ItemIndex]);
  FControllerCliente.Excluir(Cliente.id);

  FControllerCliente.ObterClientes(lstClientes);
end;

procedure TfrmTelaPrincipalNew.sbtnRenovar_LocacoesClick(Sender: TObject);
begin
  var emprestimo : TEmprestimoModel;

  emprestimo := TEmprestimoModel(lstEmprestimos.Items.Objects[lstEmprestimos.ItemIndex]);

  if emprestimo.Status = 'Devolvido' then
    raise Exception.Create('O livro selecionado já foi devolvido.');

  TfrmRenovacao.RenovarEmprestimo(self, emprestimo);
  FControllerEmprestimos.ObterEmprestimos(lstEmprestimos);
end;

procedure TfrmTelaPrincipalNew.SpeedButton3Click(Sender: TObject);
begin
  var Livro: TLivroModel;

  if lstLivros.ItemIndex = -1 then
    Exit;

  Livro := TLivroModel(lstLivros.Items.Objects[lstLivros.ItemIndex]);
  FControllerLivro.Excluir(Livro.id);

  FControllerLivro.ObterLivros(lstLivros);
end;

procedure TfrmTelaPrincipalNew.TabSheet1Show(Sender: TObject);
begin
  FControllerCliente.ObterClientes(lstClientes);
end;

procedure TfrmTelaPrincipalNew.TabSheet2Show(Sender: TObject);
begin
  FControllerLivro.ObterLivros(lstLivros);
end;

procedure TfrmTelaPrincipalNew.TabSheet3Show(Sender: TObject);
begin
  FControllerLivro.ObterLivros(cbxLivroFiltro);
  FControllerEmprestimos.ObterEmprestimos(lstEmprestimos);
end;

end.
