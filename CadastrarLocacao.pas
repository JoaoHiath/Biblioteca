unit CadastrarLocacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastrarLocacao: TfrmCadastrarLocacao;

implementation

{$R *.dfm}

end.
