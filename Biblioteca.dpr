program Biblioteca;

uses
  Vcl.Forms,
  TelaPrincipal in 'view\TelaPrincipal.pas' {frmTelaPrincipal},
  ListaLivros in 'view\ListaLivros.pas' {frmListaLivros},
  CadastroLivro in 'view\CadastroLivro.pas' {frmCadastroLivro},
  CadastroCliente in 'view\CadastroCliente.pas' {frmCadastroCliente},
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
  ListaClientes in 'view\ListaClientes.pas' {frmListaClientes},
  ListaEmprestimos in 'view\ListaEmprestimos.pas' {frmListaEmprestimos},
  Controller.Cliente in 'Controller\Controller.Cliente.pas',
  Factory.Cliente in 'Factory\Factory.Cliente.pas',
  Controller.Livro in 'Controller\Controller.Livro.pas',
  Factory.Livro in 'Factory\Factory.Livro.pas',
  Controller.Emprestimo in 'Controller\Controller.Emprestimo.pas',
  Factory.Emprestimo in 'Factory\Factory.Emprestimo.pas',
  CadastroEmprestimo in 'view\CadastroEmprestimo.pas' {frmCadastroEmprestimo},
  DataDevolucao in 'view\DataDevolucao.pas' {frmDevolucao},
  DataRenovacao in 'view\DataRenovacao.pas' {frmRenovacao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdtmPrincipal, dtmPrincipal);
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.Run;
end.
