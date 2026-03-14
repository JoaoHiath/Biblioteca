unit Controller.Livro;

interface

uses

  Vcl.Controls, ListaLivros, Model.Livro, Service.Livro, System.Classes, System.SysUtils, System.Threading, Vcl.Dialogs;

type

  TLivroController = class

    private

    FOwner: TComponent;
    FService: ILivroService;

    public

    constructor Create(Owner: TComponent; Service: ILivroService);
    procedure ObterLivros(pLista: TCustomListControl);
    procedure Salvar (Livro: TLivroModel);
    procedure Excluir (id: integer);

  end;

implementation

{ TLivroController }

constructor TLivroController.Create(Owner: TComponent;
  Service: ILivroService);
begin
  FOwner:= Owner;
  FService:= Service;
end;

procedure TLivroController.ObterLivros(pLista: TCustomListControl);
begin
var Livros := FService.ObterLivros;

  try
    pLista.Clear;
    for var Livro in Livros do
      pLista.AddItem(Livro.Titulo ,Livro);
  except
    on E: exception do
      ShowMessage('Erro: ' + E.Message);
  end;
end;

procedure TLivroController.Salvar(Livro: TLivroModel);
begin
  FService.Salvar(Livro);
end;

procedure TLivroController.Excluir(id: integer);
begin
  FService.Excluir(id);
end;

end.
