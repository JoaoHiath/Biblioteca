unit CadastrarLocatario;

interface

uses
  Model.Cliente, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask;

type
  TfrmCadastrarLocatario = class(TForm)
    pnlCadastrarLocatarioPrincipal: TPanel;
    lblNome_CadastrarLocatario: TLabel;
    lblCpf_CadastrarLocatario: TLabel;
    lblEmail_CadastrarLocatario: TLabel;
    lblTelefone_CadastrarLocatario: TLabel;
    shpConfirmar_CadastrarLivros: TShape;
    sbtnConfirmar_CadastrarLivros: TSpeedButton;
    shpCancelar_CadastrarLivros: TShape;
    sbtnCancelar_CadastrarLivros: TSpeedButton;
    edtNome_CadastrarLocatario: TEdit;
    edtEmail_CadastrarLocatario: TEdit;
    pnlCadastrarLocatarioNome: TPanel;
    lblCadastrarLocatario: TLabel;
    edtCpf_CadastrarLocatario: TMaskEdit;
    edtTelefone_CadastrarLocatario: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure sbtnCancelar_CadastrarLivrosClick(Sender: TObject);
    procedure sbtnConfirmar_CadastrarLivrosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    class procedure AdicionarCliente(pOwner: TComponent);
    class procedure EditarCliente(pOwner: TComponent; PCliente: TClienteModel);
  end;

var
  frmCadastrarLocatario: TfrmCadastrarLocatario;
  Fcliente: TClienteModel;

implementation

{$R *.dfm}

{ TfrmCadastrarLocatario }

uses

  Controller.Cliente, Factory.Cliente;

var

  FController: TClienteController;

class procedure TfrmCadastrarLocatario.AdicionarCliente(pOwner: TComponent);
begin
  var lfrmCadastroCliente := TfrmCadastrarLocatario.Create(pOwner);

  try
    lfrmCadastroCliente.ShowModal;
    lfrmCadastroCliente.sbtnConfirmar_CadastrarLivros.Caption := 'Confirmar';
    finally
    lfrmCadastroCliente.Free;
  end;
end;

class procedure TfrmCadastrarLocatario.EditarCliente(pOwner: TComponent;
  PCliente: TClienteModel);
begin
  var lfrmCadastroCliente := TfrmCadastrarLocatario.Create(pOwner);
  FCliente := PCliente;

  lfrmCadastroCliente.edtNome_CadastrarLocatario.Text := Fcliente.Nome;
  lfrmCadastroCliente.edtCpf_CadastrarLocatario.Text := Fcliente.Cpf;
  lfrmCadastroCliente.edtEmail_CadastrarLocatario.Text := Fcliente.Email;
  lfrmCadastroCliente.edtTelefone_CadastrarLocatario.Text := Fcliente.Telefone;
  try
    lfrmCadastroCliente.sbtnConfirmar_CadastrarLivros.Caption := 'Editar';
    lfrmCadastroCliente.ShowModal;
    finally
    lfrmCadastroCliente.Free;
  end;
end;

procedure TfrmCadastrarLocatario.FormCreate(Sender: TObject);
begin
  FController := TClienteFactory.criarController(self);
end;

procedure TfrmCadastrarLocatario.FormDestroy(Sender: TObject);
begin
  FController.Free;
end;

procedure TfrmCadastrarLocatario.sbtnCancelar_CadastrarLivrosClick(
  Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmCadastrarLocatario.sbtnConfirmar_CadastrarLivrosClick(
  Sender: TObject);
begin
    try
    try
      if  sbtnConfirmar_CadastrarLivros.Caption = 'Confirmar' then
        FCliente := TClienteModel.Create;

      FCliente.Nome := edtNome_CadastrarLocatario.Text;
      FCliente.Cpf:= edtCpf_CadastrarLocatario.text;
      FCliente.Telefone:= edtTelefone_CadastrarLocatario.Text;
      FCliente.Email := edtEmail_CadastrarLocatario.Text;

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

end.
