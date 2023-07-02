void main() {
  List<Produtos> produtos = criarlistadeprod();

  for (Produtos produtos in produtos) {
    double desconto = Desconto(produtos.preco);
    double valorcomDesconto = produtos.preco - desconto;

    print(
        'Novo preco do produtos ${valorcomDesconto} com desconto de ${desconto}');
  }
}

List<Produtos> criarlistadeprod() {
  List<Produtos> produtos = [
    Produtos('tenis', 240.0),
    Produtos('meia', 25.0),
    Produtos('calça', 150.0),
    Produtos('blusa', 120.0),
    Produtos('shorts', 80.0),
  ];

  return produtos;
}

double Desconto(double preco) {
  double desconto = (preco * 30.0 / 100);
  return desconto;
}

class Produtos {
  String nome;
  double preco;

  Produtos(this.nome, this.preco);
}
