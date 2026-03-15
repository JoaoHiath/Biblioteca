unit Model.Cliente;

interface

uses
  System.Classes;

type

  TClienteModel = class
  private
    FId: integer;
    FNome: string;
    FCpf: string;
    FTelefone: string;
    FEmail: string;

  public

    property id: integer read FID write FId;
    property Nome: String read FNome write FNome;
    property Cpf: String read FCpf write FCpf;
    property Telefone: String read FTelefone write FTelefone;
    property Email: String read FEmail write FEmail;

end;

implementation

end.
