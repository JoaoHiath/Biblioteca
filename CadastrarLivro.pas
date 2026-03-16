unit CadastrarLivro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmCadastrarLivro = class(TForm)
    pnlCadastrarLivroPrincipal: TPanel;
    lblTitulo_CadastrarLivros: TLabel;
    edtTitulo_CadastrarLivros: TEdit;
    lblAutor_CadastrarLivros: TLabel;
    edtAutor_CadastrarLivros: TEdit;
    edtEditora_CadastrarLivros: TEdit;
    lblEditora_CadastrarLivros: TLabel;
    edtQntddTotal_CadastrarLivros: TEdit;
    lblQntddTotal_CadastrarLivros: TLabel;
    lblQuantidadeDisponivel: TLabel;
    edtQntddDisponivel_CadastrarLivros: TEdit;
    lblISBN_CadastrarLivros: TLabel;
    edtISBN_CadastrarLivros: TEdit;
    pnlCadastrarLivroNome: TPanel;
    lblCadastrarLivros: TLabel;
    shpConfirmar_CadastrarLivros: TShape;
    sbtnConfirmar_CadastrarLivros: TSpeedButton;
    shpCancelar_CadastrarLivros: TShape;
    sbtnCancelar_CadastrarLivros: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastrarLivro: TfrmCadastrarLivro;

implementation

{$R *.dfm}

end.
