public with sharing abstract class Conta {

    private String numero;
    private String titular;
    private Decimal saldo;

    public Conta(String numero, String titular) {
        this.numero = numero;
        this.titular = titular;
        this.saldo = 0;
    }

    public void depositar(Decimal valor) {
        if (valor > 0) {
            saldo += valor;
        }
    }

    public void sacar(Decimal valor) {
        if (valor > 0 && valor <= saldo) {
            saldo -= valor;
        }
    }

    public Decimal getSaldo() {
        return saldo;
    }

    public abstract Decimal calcularTaxa();
}
