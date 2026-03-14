unit CadastroEmprestimo;

interface

uses
  Controller.Livro, Controller.Cliente, Model.Livro, Model.Emprestimo, Model.Cliente, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmCadastroEmprestimo = class(TForm)
    pnlCadastroEmprestimo: TPanel;
    lblInformacoesCliente: TLabel;
    lblLivro: TLabel;
    pnlEscolhas: TPanel;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    cbxLivro: TComboBox;
    Label1: TLabel;
    cbxCliente: TComboBox;
    dtpEmprestimoPrevisaoEntrega: TDateTimePicker;
    lblDataPrevistaDevolução: TLabel;
    dtpDataEmprestimo: TDateTimePicker;
    Label2: TLabel;
    procedure btnConfirmarClick(Sender: TObject);
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
  frmCadastroEmprestimo: TfrmCadastroEmprestimo;

implementation

{$R *.dfm}

uses

  Factory.Cliente, Factory.Livro, Controller.Emprestimo, Factory.Emprestimo;

var FControllerCliente : TClienteController;
    FControllerLivro : TLivroController;
    FcontrollerEmprestimo : TEmprestimoController;

class procedure TfrmCadastroEmprestimo.AdicionarEmprestimo(pOwner: TComponent);
begin
  var lfrmCadastroEmprestimo := TfrmCadastroEmprestimo.Create(pOwner);

  try
    lfrmCadastroEmprestimo.ShowModal;
    lfrmCadastroEmprestimo.btnConfirmar.Caption := 'Confirmar1';
    finally
    lfrmCadastroEmprestimo.Free;
  end;
end;

procedure TfrmCadastroEmprestimo.btnConfirmarClick(Sender: TObject);
begin

var FEmprestimo := TEmprestimoModel.Create;
var Livro := TLivroModel(cbxLivro.Items.Objects[cbxLivro.ItemIndex]);
var Cliente := TClienteModel(cbxCliente.Items.Objects[cbxCliente.ItemIndex]);

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

procedure TfrmCadastroEmprestimo.FormCreate(Sender: TObject);
begin
  FControllerCliente := TClienteFactory.criarController(self);
  FControllerLivro := TLivroFactory.criarController(self);
  FcontrollerEmprestimo := TEmprestimoFactory.criarController(self);
end;

procedure TfrmCadastroEmprestimo.FormDestroy(Sender: TObject);
begin
  FControllerCliente.Free;
  FControllerLivro.Free;
  FcontrollerEmprestimo.Free;
end;

procedure TfrmCadastroEmprestimo.FormShow(Sender: TObject);
begin
  FControllerLivro.ObterLivros(cbxLivro);
  FControllerCliente.ObterClientes(cbxCliente);
end;

end.
