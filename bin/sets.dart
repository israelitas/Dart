void main () {
  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos("Porto Alegre", registrosVisitados);
  registrosVisitados = registrarDestinos("Curitiba", registrosVisitados);
  registrosVisitados = registrarDestinos("Campo Grande", registrosVisitados);
  print(registrosVisitados);
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}

enum Transporte {
  carro,
  busao,
  bike,
  aviao,
  trem,
  skate
}

void escolherModo (Transporte locomocao) {
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


