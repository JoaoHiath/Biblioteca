unit DataModulePrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TdtmPrincipal = class(TDataModule)
    FDConnection: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDTCliente: TFDTable;
    FDTLivro: TFDTable;
    FDTEmprestimo: TFDTable;
    FDTClienteid: TIntegerField;
    FDTClientenome: TWideStringField;
    FDTClientecpf: TWideStringField;
    FDTClientetelefone: TWideStringField;
    FDTClienteemail: TWideStringField;
    FDTLivroid: TIntegerField;
    FDTLivrotitulo: TWideStringField;
    FDTLivroautor: TWideStringField;
    FDTLivroeditora: TWideStringField;
    FDTLivrocategoria: TWideStringField;
    FDTLivroquantidade_total: TIntegerField;
    FDTLivroquantidade_disponivel: TIntegerField;
    FDTLivroidentificacao_isbn: TWideStringField;
    FDTEmprestimoid: TIntegerField;
    FDTEmprestimoid_livro: TIntegerField;
    FDTEmprestimoid_cliente: TIntegerField;
    FDTEmprestimodata_prevista_devolucao: TDateField;
    FDTEmprestimodata_emprestimo: TDateField;
    FDTEmprestimodata_devolucao: TDateField;
    FDTEmprestimostatus: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmPrincipal: TdtmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
