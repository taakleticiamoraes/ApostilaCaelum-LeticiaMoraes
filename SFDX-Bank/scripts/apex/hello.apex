Conta conta1 = new Conta('001', 'João');
Conta conta2 = new Conta('002', 'Maria');

conta1.depositar(300);
conta2.depositar(150);

CadastroDeContas cadastro = new CadastroDeContas();
cadastro.adicionarConta(conta1);
cadastro.adicionarConta(conta2);

for (Conta c : cadastro.listarContas()) {
    System.debug(
        'Titular: ' + c + ' Saldo: ' + c.getSaldo()
    );
}
