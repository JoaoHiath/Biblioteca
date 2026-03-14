unit TelaPrincipal;

interface

uses
  ListaClientes, ListaLivros, ListaEmprestimos,Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.VirtualImageList,
  Vcl.BaseImageCollection, Vcl.ImageCollection, Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TfrmTelaPrincipal = class(TForm)
    gpnlPrincipal: TGridPanel;
    Panel3: TPanel;
    Shape4: TShape;
    Image4: TImage;
    lblPedidos: TLabel;
    Panel2: TPanel;
    Shape3: TShape;
    Image3: TImage;
    lblClientes: TLabel;
    Panel1: TPanel;
    Shape2: TShape;
    Image2: TImage;
    lblLivros: TLabel;
    Label5: TLabel;
    procedure lblLivrosClick(Sender: TObject);
    procedure lblClientesClick(Sender: TObject);
    procedure lblPedidosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

{$R *.dfm}


procedure TfrmTelaPrincipal.lblClientesClick(Sender: TObject);
begin
  TfrmListaClientes.AbrirListaClientes(self);
end;

procedure TfrmTelaPrincipal.lblLivrosClick(Sender: TObject);
begin
   TfrmListaLivros.AbrirListaLivros(self);
end;

procedure TfrmTelaPrincipal.lblPedidosClick(Sender: TObject);
begin
  TfrmListaEmprestimos.AbrirListaEmprestimos(self);
end;

end.
