void main () {
  escolherModoEnum(Transporte.aviao);
}

void escolherModoEnum (Transporte locomocao) {
  if (locomocao == Transporte.aviao) {
    print("Vou de avião");
  } else if (locomocao == Transporte.bike) {
    print("Vou de bike");
  } else {
    print("Não sei como vou");
  }
}
enum Transporte {
  carro,
  busao,
  bike,
  patinete,
  aviao,
  metro,
  trem
}