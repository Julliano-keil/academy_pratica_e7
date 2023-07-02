void main() {
  final conta = ContaBancaria(800.0, 'juliano');

  conta.depositar(50.0);
  conta.sacar(500.0);
  print('o titular ${conta.titular} tem ${conta.saldo} na sua conta');
}

class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.saldo, this.titular);

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
    } else {
      print('saldo insuficiente!');
    }
  }
}
