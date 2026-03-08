unit CadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  private
    { Private declarations }
  public
    { Public declarations }

    class procedure AdicionarCliente(pOwner: TComponent);
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

class procedure TfrmCadastroCliente.AdicionarCliente(pOwner: TComponent);
begin
  var lfrmCadastroCliente := TfrmCadastroCliente.Create(pOwner);

  try
    lfrmCadastroCliente.ShowModal;
  finally
    lfrmCadastroCliente.Free;
  end;
end;

end.
