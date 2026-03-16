program Biblioteca;

uses
  Vcl.Forms,
  Model.Livro in 'Model\Model.Livro.pas',
  Model.Cliente in 'Model\Model.Cliente.pas',
  Model.Emprestimo in 'Model\Model.Emprestimo.pas',
  Service.Cliente in 'Service\Service.Cliente.pas',
  Service.Livro in 'Service\Service.Livro.pas',
  Service.Emprestimo in 'Service\Service.Emprestimo.pas',
  Repository.Cliente in 'Repository\Repository.Cliente.pas',
  Repository.Livro in 'Repository\Repository.Livro.pas',
  Repository.Emprestimo in 'Repository\Repository.Emprestimo.pas',
  DataModulePrincipal in 'DataModule\DataModulePrincipal.pas' {dtmPrincipal: TDataModule},
  Controller.Cliente in 'Controller\Controller.Cliente.pas',
  Factory.Cliente in 'Factory\Factory.Cliente.pas',
  Controller.Livro in 'Controller\Controller.Livro.pas',
  Factory.Livro in 'Factory\Factory.Livro.pas',
  Controller.Emprestimo in 'Controller\Controller.Emprestimo.pas',
  Factory.Emprestimo in 'Factory\Factory.Emprestimo.pas',
  CadastrarLivro in 'view\CadastrarLivro.pas' {frmCadastrarLivro},
  CadastrarLocacao in 'view\CadastrarLocacao.pas' {frmCadastrarLocacao},
  CadastrarLocatario in 'view\CadastrarLocatario.pas' {frmCadastrarLocatario},
  DataDevolucao in 'view\DataDevolucao.pas' {frmDevolucao},
  DataRenovacao in 'view\DataRenovacao.pas' {frmRenovacao},
  TelaPrincipalNew in 'view\TelaPrincipalNew.pas' {frmTelaPrincipalNew};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdtmPrincipal, dtmPrincipal);
  Application.CreateForm(TfrmTelaPrincipalNew, frmTelaPrincipalNew);
  Application.Run;
end.
