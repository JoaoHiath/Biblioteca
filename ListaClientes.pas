unit ListaClientes;

interface

uses
  Model.Cliente, CadastroCliente, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrmListaClientes = class(TForm)
    pnlControlesLivros: TPanel;
    btnExcluir: TButton;
    btnEditar: TButton;
    btnAdicionar: TButton;
    lstClientes: TListBox;
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
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

uses

  Controller.Cliente, Factory.Cliente;

var

  FController: TClienteController;

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
  FController.ObterClientes(lstClientes);
end;

procedure TfrmListaClientes.btnEditarClick(Sender: TObject);
begin
  var Cliente: TClienteModel;

  if lstClientes.ItemIndex = -1 then
  Exit;


  Cliente := TClienteModel(lstClientes.Items.Objects[lstClientes.ItemIndex]);

  TfrmCadastroCliente.EditarCliente(self, Cliente);
  FController.ObterClientes(lstClientes);
end;

procedure TfrmListaClientes.btnExcluirClick(Sender: TObject);
begin
begin
  var Cliente: TClienteModel;

  if lstClientes.ItemIndex = -1 then
    Exit;

  Cliente := TClienteModel(lstClientes.Items.Objects[lstClientes.ItemIndex]);
  FController.Excluir(Cliente.id);

  FController.ObterClientes(lstClientes);
end;
end;

procedure TfrmListaClientes.FormCreate(Sender: TObject);
begin
  FController := TClienteFactory.criarController(self);
end;

procedure TfrmListaClientes.FormDestroy(Sender: TObject);
begin
  FController.Free;
end;

procedure TfrmListaClientes.FormShow(Sender: TObject);
begin
  FController.ObterClientes(lstClientes);
end;

end.
