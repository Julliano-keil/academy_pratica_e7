void main() {
  Retangulo retangulo = Retangulo(5.25, 6.55);

  double area = retangulo.calcularArea();

  print('Area do retangulo : $area ');
}

class Retangulo {
  double altura;
  double largura;

  Retangulo(this.altura, this.largura);

  double calcularArea() {
    return altura * largura;
  }
}
