unit Controller.Emprestimo;

interface


uses

  Vcl.Controls, ListaEmprestimos, Model.Livro,Model.Emprestimo, Service.Emprestimo, System.Classes, System.SysUtils, System.Threading, Vcl.Dialogs;

type

  TEmprestimoController = class

    private

    FOwner: TComponent;
    FService: IEmprestimoService;

    public

    constructor Create(pOwner: TComponent; pService: IEmprestimoService);
    procedure ObterEmprestimos(pLista: TCustomListControl);
    procedure RealizarEmprestimo (pEmprestimo: TEmprestimoModel; pLivro: TLivroModel);
    procedure Excluir (pId: integer);

  end;

implementation

{ TClienteController }

constructor TEmprestimoController.Create(pOwner: TComponent;
  pService: IEmprestimoService);
begin
    FOwner:= pOwner;
  FService:= pService;
end;

procedure TEmprestimoController.ObterEmprestimos(pLista: TCustomListControl);
begin
  try
    var Emprestimos := FService.ObterEmprestimo;
    pLista.Clear;

    for var Emprestimo in Emprestimos do
      pLista.AddItem('Emprestimo:' + DateToStr(Emprestimo.DataEmprestimo),Emprestimo);

  except
    on E: exception do
      ShowMessage('Erro: ' + E.Message);
  end;
end;

procedure TEmprestimoController.RealizarEmprestimo(pEmprestimo: TEmprestimoModel; pLivro: TLivroModel);
begin
  FService.RealizarEmprestimo(pEmprestimo, pLivro);
end;

procedure TEmprestimoController.Excluir(pId: integer);
begin
  FService.Excluir(pId);
end;

end.
