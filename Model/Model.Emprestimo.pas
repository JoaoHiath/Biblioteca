unit Model.Emprestimo;

interface

uses
  System.Classes;

type

  TEmprestimoModel = class
  private

    FId: Integer;
    FIdLivro: integer;
    FIdCliente: integer;
    FDataEmprestimo: TDate;
    FDataPrevistaDevolucao: TDate;
    FDataDevolucao: TDate;
    FStatus: String;

  public

    property Id: Integer read FId write FId;
    property IdLivro: Integer read FIdLivro write FIdLivro;
    property IdCliente: Integer read FIdCliente write FIdCliente;
    property DataEmprestimo: TDate read FDataEmprestimo write FDataEmprestimo;
    property DataPrevistaDevolucao: TDate read FDataPrevistaDevolucao write FDataPrevistaDevolucao;
    property DataDevolucao: TDate read FDataDevolucao write FDataDevolucao;
    property Status: String read FStatus write FStatus;

  end;

implementation

end.
