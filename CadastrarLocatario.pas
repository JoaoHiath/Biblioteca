unit CadastrarLocatario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

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
    edtCpf_CadastrarLocatario: TEdit;
    edtEmail_CadastrarLocatario: TEdit;
    edtTelefone_CadastrarLocatario: TEdit;
    pnlCadastrarLocatarioNome: TPanel;
    lblCadastrarLocatario: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastrarLocatario: TfrmCadastrarLocatario;

implementation

{$R *.dfm}

end.
