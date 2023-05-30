void main () {

  Set<String> registrosVisitados = <String>{};

  registrosVisitados = registrarDestinos("Porto Alegre", registrosVisitados);

  //seta a chave e o valor do map
  Map<String, dynamic> registrarPrecos = {};

  // Adicionar elementos ao map
  registrarPrecos["Porto Alegre"] = 750;
  registrarPrecos["São Paulo"] = 1050;
  registrarPrecos["Curitiba"] = 900;


  //remover elementos do map
  //registrarPrecos.remove("São Paulo");

  //imprime o map
  //print(registrarPrecos);

  var meuNumero = "7.1";
  print(meuNumero);

  meuNumero = "7.9";
  print(meuNumero);


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


