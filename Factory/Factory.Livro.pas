unit Factory.Livro;

interface

uses

  System.Classes, Controller.Livro, Service.Livro, Repository.Livro, ListaLivros;

type

  TLivroFactory = class
    public
    class function criarController(owner: TComponent): TLivroController;
    class function criarService: ILivroService;
    class function criarRepository: ILivroRepository;
  end;

implementation

{ TClienteFactory }

class function TLivroFactory.criarController(
  owner: TComponent): TLivroController;
begin
  var Service:= CriarService;

  Result := TLivroController.Create(owner, service);
end;

class function TLivroFactory.criarRepository: ILivroRepository;
begin
  Result := TLivroRepository.Create;
end;

class function TLivroFactory.criarService: ILivroService;
begin
  var Repository:= CriarRepository;

  Result:= TLivroService.Create(Repository);
end;

end.
