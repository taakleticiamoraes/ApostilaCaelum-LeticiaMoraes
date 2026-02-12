public with sharing class ContaCorrente extends Conta{
    public ContaCorrente(String numero, String titular) {
        super(numero, titular);
    }

    public override Decimal calcularTaxa(){
        return getSaldo() * 0.001;
    }
}