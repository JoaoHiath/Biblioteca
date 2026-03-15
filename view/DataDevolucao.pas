unit DataDevolucao;

interface

uses
   Model.Emprestimo, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmDevolucao = class(TForm)
    pnlDataDevolucao: TPanel;
    Panel1: TPanel;
    lblDataDevolucao: TLabel;
    dtpDevolucao: TDateTimePicker;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FEmprestimo: TEmprestimoModel;
    class procedure RegistrarDevolucao (pOwner: Tcomponent; pEmprestimo: TEmprestimoModel);
  end;

var
  frmDevolucao: TfrmDevolucao;

implementation

{$R *.dfm}

uses

  Factory.Emprestimo, Controller.Emprestimo;

var
  FController: TEmprestimoController;

procedure TfrmDevolucao.btnConfirmarClick(Sender: TObject);
begin
try
  try
    FEmprestimo.DataDevolucao:= dtpDevolucao.Date;

    FController.DevolverLivro(FEmprestimo);
    ModalResult:= mrOk;
  except
    on E : exception do
      ShowMessage(E.Message);
  end;
finally
  FEmprestimo.Free;
end;
end;

procedure TfrmDevolucao.FormCreate(Sender: TObject);
begin
  FController := TEmprestimoFactory.criarController(self);
end;

procedure TfrmDevolucao.FormDestroy(Sender: TObject);
begin
  FController.Free;
end;

class procedure TfrmDevolucao.RegistrarDevolucao(pOwner: Tcomponent;
  pEmprestimo: TEmprestimoModel);
begin
  var lfrmDevolucao := TfrmDevolucao.Create(pOwner);

  lfrmDevolucao.FEmprestimo := pEmprestimo;

  try
    lfrmDevolucao.ShowModal;
  finally
    lfrmDevolucao.Free;
  end;
end;

end.
