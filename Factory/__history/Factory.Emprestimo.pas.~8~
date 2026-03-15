unit Factory.Emprestimo;

interface

uses

  System.Classes, Controller.Emprestimo, Service.Emprestimo, Repository.Emprestimo, ListaEmprestimos;

type

  TEmprestimoFactory = class
    public
    class function criarController(owner: TComponent): TEmprestimoController;
    class function criarService: IEmprestimoService;
    class function criarRepository: IEmprestimoRepository;
  end;

implementation

{ TEmprestimoFactory }

class function TEmprestimoFactory.criarController(
  owner:  TComponent): TEmprestimoController;
begin
  var Service:= CriarService;

  Result := TEmprestimoController.Create(owner, service);
end;

class function TEmprestimoFactory.criarRepository: IEmprestimoRepository;
begin
  Result := TEmprestimoRepository.Create;
end;

class function TEmprestimoFactory.criarService: IEmprestimoService;
begin
  var RepositoryEmprestimo:= CriarRepository;

  Result:= TEmprestimoService.Create(RepositoryEmprestimo);
end;

end.
