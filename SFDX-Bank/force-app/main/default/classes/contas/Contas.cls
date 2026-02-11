public with sharing class Contas {
    public class Conta{
        private String numero;
        private String titular;
        private Decimal saldo;
        
        public Conta(String numero, String titular){
            this.numero = numero;
            this.titular = titular;
            this.saldo = 0;
        }
        
        public void depositar(Decimal valor){
            if(valor > 0){
                this.saldo += valor;
            }
        }
        
        public void sacar(Decimal valor){
            if(valor > 0 && valor <= this.saldo){
                this.saldo -= valor;
            }
        }
        
        public Decimal getSaldo(){
            return this.saldo;
        }
    }
}