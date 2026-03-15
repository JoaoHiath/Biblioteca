unit Model.Livro;

interface

uses
  System.Classes;

type

  TLivroModel = class
  private

    FId: integer;
    FTitulo: string;
    FAutor: string;
    FEditora: string;
    FCategoria: string;
    FQuantidadeTotal: integer;
    FQuantidadeDisponivel: integer;
    FIdentificacaoISBN: string;

  public

    property id: integer read FId write FId;
    property Titulo: String read FTitulo write FTitulo;
    property Autor: String read FAutor write FAutor;
    property Editora: String read FEditora write FEditora;
    property categoria: string read FCategoria write FCategoria;
    property QuantidadeTotal: integer read FQuantidadeTotal write FQuantidadeTotal;
    property QuantidadeDisponivel: integer read FQuantidadeDisponivel write FQuantidadeDisponivel;
    property IdentificacaoISBN: String read FIdentificacaoISBN write FIdentificacaoISBN;

  end;

implementation

end.
