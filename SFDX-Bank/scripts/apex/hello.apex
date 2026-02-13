//Criando contas
ContaCorrente cc1 = new ContaCorrente('1', 'Ana');
cc1.depositar(1000);

ContaCorrente cc2 = new ContaCorrente('2', 'Bruno');
cc2.depositar(2000);

ContaPoupanca cp1 = new ContaPoupanca('3', 'Carlos');
cp1.depositar(1500);

//Testando contador estático
System.debug('Total contas criadas: ' + Conta.totalContas);

//Testando taxas
List<Conta> contas = new List<Conta>{ cc1, cc2, cp1 };

Decimal totalTaxas = 0;
for (Conta c : contas) {
    totalTaxas += c.calcularTaxa();
}

System.debug('Total de taxas: ' + totalTaxas);

//Testando impostos
SeguroDeVida seguro = new SeguroDeVida();

List<Tributavel> tributaveis = new List<Tributavel>{ cc1, seguro };

Decimal totalImpostos = CalculadoraDeImpostos.calcularTotalImpostos(tributaveis);

System.debug('Total de impostos: ' + totalImpostos);

//Testando saque com exceção
try {
    cc1.sacar(500);
    System.debug('Saque realizado com sucesso. Saldo: ' + cc1.getSaldo());

    cc1.sacar(10000); // deve falhar
} catch (SaldoInsuficienteException e) {
    System.debug('Erro capturado corretamente: ' + e.getMessage());
}

//Testando coleções
Map<Integer, Conta> contasMap = new Map<Integer, Conta>{
    1 => cc1,
    2 => cc2,
    3 => cp1
};

Set<Integer> numerosBuscados = new Set<Integer>{ 1, 3, 5 };

List<Conta> encontradas = ServiceConta.buscarContasExistentes(
    numerosBuscados,
    contasMap
);

System.debug('Contas encontradas: ' + encontradas.size());
