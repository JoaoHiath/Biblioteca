unit DataRenovacao;

interface

uses
  Model.Emprestimo, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmRenovacao = class(TForm)
    pnlDataRenovacao: TPanel;
    lblDataRenovacao: TLabel;
    dtpRenovacao: TDateTimePicker;
    pnlControles: TPanel;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FEmprestimo: TEmprestimoModel;
    class procedure RenovarEmprestimo (pOwner: Tcomponent; pEmprestimo: TEmprestimoModel);
  end;

var
  frmRenovacao: TfrmRenovacao;

implementation

{$R *.dfm}

uses

  Factory.Emprestimo, Controller.Emprestimo;

var FController: TEmprestimoController;

procedure TfrmRenovacao.btnConfirmarClick(Sender: TObject);
begin
  try
    try
      FEmprestimo.DataPrevistaDevolucao := dtpRenovacao.Date;

      FController.renovarLivro(FEmprestimo);
      ModalResult:= mrOk;
    except
      on E : exception do
        ShowMessage(E.Message);
    end;
finally
  FEmprestimo.Free;
end;
end;

procedure TfrmRenovacao.FormCreate(Sender: TObject);
begin
  FController := TEmprestimoFactory.criarController(self);
end;

procedure TfrmRenovacao.FormDestroy(Sender: TObject);
begin
  FController.Free;
end;

class procedure TfrmRenovacao.RenovarEmprestimo(pOwner: Tcomponent;
  pEmprestimo: TEmprestimoModel);
begin
  var lfrmDevolucao := TfrmRenovacao.Create(pOwner);

  lfrmDevolucao.FEmprestimo := pEmprestimo;

  try
    lfrmDevolucao.ShowModal;
  finally
    lfrmDevolucao.Free;
  end;
end;

end.
