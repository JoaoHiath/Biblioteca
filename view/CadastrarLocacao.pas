unit CadastrarLocacao;

interface

uses
  Controller.Livro, Controller.Cliente, Model.Livro, Model.Emprestimo, Model.Cliente,Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls;

type
  TfrmCadastrarLocacao = class(TForm)
    pnlCadastrarLivroNome: TPanel;
    pnlCadastrarLocacaoPrincipal: TPanel;
    lblNome_CadastrarLocacao: TLabel;
    lblNomeLivro_CadastrarLocacao: TLabel;
    lblDtLocacao_CadastrarLocacao: TLabel;
    lblDtDevolucao_CadastrarLocacao: TLabel;
    lblCadastrarLocacao: TLabel;
    shpRenovar_Locacoes: TShape;
    sbtnConfirmar_CadastrarLocacoes: TSpeedButton;
    shoExcluir_Locacoes: TShape;
    sbtnCancelar_CadastrarLocacoes: TSpeedButton;
    cbxLocatario_CadastrarLocacao: TComboBox;
    cbxLivro_CadastrarLocacao: TComboBox;
    dtpDataEmprestimo: TDateTimePicker;
    dtpEmprestimoPrevisaoEntrega: TDateTimePicker;
    procedure sbtnCancelar_CadastrarLocacoesClick(Sender: TObject);
    procedure sbtnConfirmar_CadastrarLocacoesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure AdicionarEmprestimo(pOwner: TComponent);
  end;

var
  frmCadastrarLocacao: TfrmCadastrarLocacao;

implementation

{$R *.dfm}

uses

  Factory.Cliente, Factory.Livro, Controller.Emprestimo, Factory.Emprestimo;

var FControllerCliente : TClienteController;
    FControllerLivro : TLivroController;
    FcontrollerEmprestimo : TEmprestimoController;

class procedure TfrmCadastrarLocacao.AdicionarEmprestimo(pOwner: TComponent);
begin
  var lfrmCadastroEmprestimo := TfrmCadastrarLocacao.Create(pOwner);

  try
    lfrmCadastroEmprestimo.ShowModal;
    finally
    lfrmCadastroEmprestimo.Free;
  end;
end;

procedure TfrmCadastrarLocacao.FormCreate(Sender: TObject);
begin
  FControllerCliente := TClienteFactory.criarController(self);
  FControllerLivro := TLivroFactory.criarController(self);
  FcontrollerEmprestimo := TEmprestimoFactory.criarController(self);
end;

procedure TfrmCadastrarLocacao.FormDestroy(Sender: TObject);
begin
  FControllerCliente.Free;
  FControllerLivro.Free;
  FcontrollerEmprestimo.Free;
end;

procedure TfrmCadastrarLocacao.FormShow(Sender: TObject);
begin
  FControllerLivro.ObterLivros(cbxLivro_CadastrarLocacao);
  FControllerCliente.ObterClientes(cbxLocatario_CadastrarLocacao);
end;

procedure TfrmCadastrarLocacao.sbtnCancelar_CadastrarLocacoesClick(
  Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCadastrarLocacao.sbtnConfirmar_CadastrarLocacoesClick(
  Sender: TObject);
begin

var FEmprestimo := TEmprestimoModel.Create;
var Livro := TLivroModel(cbxLivro_CadastrarLocacao.Items.Objects[cbxLivro_CadastrarLocacao.ItemIndex]);
var Cliente := TClienteModel(cbxLocatario_CadastrarLocacao.Items.Objects[cbxLocatario_CadastrarLocacao.ItemIndex]);

  try
    try
      FEmprestimo.IdLivro := Livro.Id;
      FEmprestimo.IdCliente := Cliente.id;
      FEmprestimo.DataEmprestimo := dtpDataEmprestimo.Date ;
      FEmprestimo.DataPrevistaDevolucao := dtpEmprestimoPrevisaoEntrega.Date;
      FEmprestimo.Status := 'Emprestado';

      FcontrollerEmprestimo.RealizarEmprestimo(FEmprestimo, Livro);
      ModalResult := mrOk;
    except
      on E : exception do
        ShowMessage(E.Message);
    end;
  finally
   FEmprestimo.free;
  end;
end;

end.
