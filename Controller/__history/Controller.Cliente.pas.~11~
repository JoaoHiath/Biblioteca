unit Controller.Cliente;

interface

uses

  Vcl.Controls, ListaClientes, Model.Cliente, Service.Cliente, System.Classes, System.SysUtils, System.Threading, Vcl.Dialogs;

type

  TClienteController = class

    private

    FOwner: TComponent;
    FService: IClienteService;

    public

    constructor Create(Owner: TComponent; Service: IClienteService);
    procedure ObterClientes(pLista: TCustomListControl);
    procedure Salvar (Cliente: TClienteModel);
    procedure Excluir (id: integer);

  end;

implementation

{ TClienteController }

constructor TClienteController.Create(Owner: TComponent;
  Service: IClienteService);
begin
  FOwner:= Owner;
  FService:= Service;
end;

procedure TClienteController.ObterClientes(pLista: TCustomListControl);
begin
var Clientes := FService.ObterClientes;

  try
    pLista.Clear;
    for var Cliente in Clientes do
      pLista.AddItem(Cliente.Nome ,Cliente);
  except
    on E: exception do
      ShowMessage('Erro: ' + E.Message);
  end;
end;

procedure TClienteController.Salvar(Cliente: TClienteModel);
begin
  FService.Salvar(Cliente);
end;

procedure TClienteController.Excluir(id: integer);
begin
  FService.Excluir(id);
end;

end.
