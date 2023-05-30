void main () {
  escolherModoEnum(Transporte.bike);
}

enum Transporte {
  carro,
  busao,
  bike,
  aviao,
  trem,
  skate
}

void escolherModoEnum (Transporte locomocao) {
  switch (locomocao) {
    case Transporte.carro:
      print("Vou de carro");
      break;
    case Transporte.bike:
      print("Vou de bike");
      break;
    case Transporte.aviao:
      print("Vou de avião");
      break;
    case Transporte.busao:
      print("Vou de busão");
      break;
    case Transporte.trem:
      print("Vou de trem");
      break;
    default:
      print("Nenhum dos modos acima");
  }
}
