unit CadastroCliente;

interface

uses
  Model.Cliente, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmCadastroCliente = class(TForm)
    pnlCadastroLivro: TPanel;
    lblInformacoesCliente: TLabel;
    lblNome: TLabel;
    lblEmail: TLabel;
    edtNome: TEdit;
    edtEmail: TEdit;
    pnlEscolhas: TPanel;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    GridPanel1: TGridPanel;
    lblCPF: TLabel;
    edtCPF: TEdit;
    lblTelefone: TLabel;
    edtTelefone: TEdit;
    procedure btnConfirmarClickAdicionar(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    class procedure AdicionarCliente(pOwner: TComponent);
    class procedure EditarCliente(pOwner: TComponent; PCliente: TClienteModel);

  end;

var
  frmCadastroCliente: TfrmCadastroCliente;
  Fcliente: TClienteModel;

implementation

{$R *.dfm}

uses

  Controller.Cliente, Factory.Cliente;

var

  FController: TClienteController;

class procedure TfrmCadastroCliente.EditarCliente(pOwner: TComponent; PCliente: TClienteModel);
begin
  var lfrmCadastroCliente := TfrmCadastroCliente.Create(pOwner);
  FCliente := PCliente;

  lfrmCadastroCliente.edtNome.Text := Fcliente.Nome;
  lfrmCadastroCliente.edtCPF.Text := Fcliente.Cpf;
  lfrmCadastroCliente.edtEmail.Text := Fcliente.Email;
  lfrmCadastroCliente.edtTelefone.Text := Fcliente.Telefone;
  try
    lfrmCadastroCliente.btnConfirmar.Caption := 'Editar';
    lfrmCadastroCliente.ShowModal;
    finally
    lfrmCadastroCliente.Free;
  end;
end;

class procedure TfrmCadastroCliente.AdicionarCliente(pOwner: TComponent);
begin
  var lfrmCadastroCliente := TfrmCadastroCliente.Create(pOwner);

  try
    lfrmCadastroCliente.ShowModal;
    lfrmCadastroCliente.btnConfirmar.Caption := 'Confirmar1';
    finally
    lfrmCadastroCliente.Free;
  end;
end;

procedure TfrmCadastroCliente.btnConfirmarClickAdicionar(Sender: TObject);
begin

  try
    try
      if btnConfirmar.Caption = 'Confirmar' then
        FCliente := TClienteModel.Create;

      FCliente.Nome := edtNome.Text;
      FCliente.Cpf:= edtCpf.text;
      FCliente.Telefone:= edtTelefone.Text;
      FCliente.Email := edtEmail.Text;

      FController.Salvar(FCliente);
      ModalResult := mrOk;  
    except
      on E : exception do
      begin
        ShowMessage(E.Message);
        abort
      end;
    end;
  finally
    FCliente.Free;
  end;
end;

procedure TfrmCadastroCliente.FormCreate(Sender: TObject);
begin
  FController := TClienteFactory.criarController(nil);
end;

procedure TfrmCadastroCliente.FormDestroy(Sender: TObject);
begin
 FController.Free;
end;

end.
