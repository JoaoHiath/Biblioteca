unit Service.Cliente;

interface

uses
  System.SysUtils,
  Generics.Collections,Model.Cliente, Repository.Cliente;

type

 IClienteService = interface

   function ObterClientes: TObjectList <TClienteModel>;
   procedure Salvar (Cliente: TClienteModel);
   procedure Excluir (id: integer);
 end;

 TClienteService = class (TInterfacedObject, IClienteService)
   private

   FRepository: IClienteRepository;
   procedure Validar(Cliente: TClienteModel);

   public

     constructor Create(repository: IClienteRepository);
     function ObterClientes: TObjectList <TClienteModel>;
     procedure Salvar (Cliente: TClienteModel);
     procedure Excluir (id: integer);

 end;


implementation

  constructor TClienteService.Create(repository: IClienteRepository);
  begin
    FRepository := repository;
  end;

  function TClienteService.ObterClientes: TObjectList <TClienteModel>;
  begin
    Result := FRepository.ObterClientes;
  end;

  procedure TClienteService.Salvar (Cliente: TClienteModel);
  begin
    Validar(Cliente);

    FRepository.Salvar(Cliente);
  end;

  procedure TClienteService.Validar(Cliente: TClienteModel);
  begin
    if Cliente.Nome = '' then
      raise Exception.Create('Preencha o nome do cliente.');
    if Cliente.Cpf = '' then
      raise Exception.Create('Preencha o CPF do cliente.');
    if Cliente.Telefone = '' then
      raise Exception.Create('Preencha o Telefone do cliente.');
    if Cliente.Email = '' then
      raise Exception.Create('Preencha o email do cliente.');
  end;

  procedure TClienteService.Excluir (id: integer);
  begin
    FRepository.Excluir(id);
  end;

end.
