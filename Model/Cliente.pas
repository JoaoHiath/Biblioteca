unit Cliente;

interface

uses
  System.Classes;

type

  TClienteModel = class
  private

    FNome: string;
    FCpf: string;
    FTelefone: string;
    FEmail: string;

  public

    property Nome: String read FNome write FNome;
    property Cpf: String read FCpf write FCpf;
    property Telefone: String read FTelefone write FTelefone;
    property Email: String read FEmail write FEmail;

end;

implementation

end.
