program Project1;

uses
  Vcl.Forms,
  main in 'view\main.pas' {Biblioteca},
  ListaLivros in 'view\ListaLivros.pas' {frmListaLivros},
  CadastroLivro in 'view\CadastroLivro.pas' {frmCadastroLivro},
  CadastroCliente in 'view\CadastroCliente.pas' {frmCadastroCliente},
  Livro in 'Model\Livro.pas',
  Cliente in 'Model\Cliente.pas',
  Emprestimo in 'Model\Emprestimo.pas',
  Service.Cliente in 'Service\Service.Cliente.pas',
  Service.Livro in 'Service\Service.Livro.pas',
  Service.Pedido in 'Service\Service.Pedido.pas',
  Repository.Cliente in 'Repository\Repository.Cliente.pas',
  Repository.Livro in 'Repository\Repository.Livro.pas',
  Repository.Emprestimo in 'Repository\Repository.Emprestimo.pas',
  DataModulePrincipal in 'DataModule\DataModulePrincipal.pas' {dtmPrincipal: TDataModule},
  ListaClientes in 'view\ListaClientes.pas' {frmListaClientes},
  ListaEmprestimos in 'view\ListaEmprestimos.pas' {frmListaEmprestimos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdtmPrincipal, dtmPrincipal);
  Application.CreateForm(TBiblioteca, Biblioteca);
  Application.Run;
end.
