unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons;

type
  TfrmTelaPrincipal = class(TForm)
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
    ListBox1: TListBox;
    lbLivros: TListBox;
    ListBox3: TListBox;
    shpAlugar_Locacoes: TShape;
    shpDevolver_Locacoes: TShape;
    shpRenovar_Locacoes: TShape;
    sbtnAlugar_Locacoes: TSpeedButton;
    sbtnDevolver_Locacoes: TSpeedButton;
    sbtnRenovar_Locacoes: TSpeedButton;
    cbxLivro: TComboBox;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

{$R *.dfm}

end.
