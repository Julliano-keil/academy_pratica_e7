import 'dart:math';

void main() {
  final random = Random();

  double min = 1.0;
  double max = 2.3;
  double randomNumber = min + (random.nextDouble() * (max - min));
  print(randomNumber);

  Pessoas pessoa = Pessoas();

  int idade = random.nextInt(100);

  pessoa._nome = 'juliano';
  pessoa._altura = randomNumber;
  pessoa._idade = idade;

  print('Nome : ${pessoa._nome}');
  print('idade : ${pessoa._idade}');
  print('altura : ${pessoa._altura.toStringAsFixed(2)}');
}

class Pessoas {
  String _nome = '';
  double _altura = 0.0;
  int _idade = 0;

  set idade(int valor) {
    if (valor >= 0) {
      _idade = valor;
    } else {
      throw Exception('erro ao atribuir o valor');
    }
  }

  int get idade => _idade;

  set nome(String nome) {
    nome = _nome;
  }

  String get nome => _nome;

  set altura(double altura) {
    altura = _altura;
  }

  double get altura => _altura;
}
