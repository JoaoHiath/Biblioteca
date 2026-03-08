unit ListaClientes;

interface

uses
  CadastroCliente, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmListaClientes = class(TForm)
    pnlControlesLivros: TPanel;
    btnExcluir: TButton;
    btnEditar: TButton;
    btnAdicionar: TButton;
    dbgdLivros: TDBGrid;
    procedure btnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    class procedure AbrirListaClientes(pOwner: TComponent);
  end;

var
  frmListaClientes: TfrmListaClientes;

implementation

{$R *.dfm}

{ TfrmListaClientes }

class procedure TfrmListaClientes.AbrirListaClientes(pOwner: TComponent);
begin
  var lfrmListaClientes := TfrmListaClientes.Create(pOwner);

  try
    lfrmListaClientes.ShowModal;
  finally
    lfrmListaClientes.Free;
  end;
end;

procedure TfrmListaClientes.btnAdicionarClick(Sender: TObject);
begin
  TfrmCadastroCliente.AdicionarCliente(self);
end;

end.
