void main() {
  String nome = "Laranja";
  double peso = 97.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce";
  int diasDesdeColheita = 30;
  bool isMadura;

  if (diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }

  Legumes mandioca = Legumes ("Aipim", 200, "marrom", true);
  Frutas banana = Frutas("Maça", 70, "Doce", "Amarela", 10);
  Nozes macadamia = Nozes("Macadâmia", 4, "Branco", "Doce", 24, 42);
  Citricas laranja = Citricas("Laranja", 67, "Laranja", "Azedo", 8, 6);

  mandioca.printAlimento();
  banana.printAlimento();
  macadamia.printAlimento();
  laranja.printAlimento();

  mandioca.cozinhar();
  mandioca.fazerMassa();
  laranja.fazerSuco();

  banana.separarIngredientes();
  macadamia.fazerMassa();
}

/*
*  1 - Posicionais obrigatórios
*  mostrarMadura (String nome) {}
*
*  2 - Nomeados opcionais
*  mostrarMadura (String? cor) {}
*
*  3 - Parâmetros padrão
*  mostrarMadura ({String cor = "azul"}) {}
*
*  4 -  Modificador required
*  mostrarMadura ({ required String cor}) {}
*
* */

//parâmetro opcional
mostrarMadura(String nome, int dias, {String cor = "azul"}) {
  //se eu não passar parâmetros a cor padrão será azul
  if (dias > 20) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }

  if (cor != null) {
    print("A $nome é $cor");
  }
}

// Define quantos dias mínimos para a fruta estar madura
bool funcEstaMadura(int dias) {
  if (dias > 20) {
    return true;
  } else {
    return false;
  }
}

class Frutas extends Alimentos implements Bolo{
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Frutas(String nome, double peso, this.sabor, String cor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida a $diasDesdeColheita dias e precisa de $diasParaMadura dias para ficar madura. Ela está madura? $isMadura");
  }

  void fazerSuco() {
    print("Você fez um suco de $nome");
  }

  @override
  void separarIngredientes() {
    print("$nome separada");
  }

  @override
  void fazerMassa() {
    print("Misturar a fruta com farinha, ovos e leite");
  }

  @override
  void assar() {
   print("Colocar no forno");
  }
}

class Alimentos {
  String nome;
  double peso;
  String cor;

  Alimentos(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Este(a) $nome pesa $peso gramas e é $cor");
  }
}

class Legumes extends Alimentos implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print("Pronto! O $nome está cozinhando");
    } else {
      print("Não precisa cozinhar");
    }
  }

  @override
  void separarIngredientes() {
    print("Lavar o(a) $nome");
  }

  void fazerMassa() {
    print("Cortar o(a) $nome");
  }

  @override
  void assar() {
    print("Pré-aquecer o fogo por 15 minutos");
  }
}

class Citricas extends Frutas {
  int nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri (bool existe) {
    if(existe) {
      print("Existe refrigerante de $nome");
    } else {
      print("Não existe refri de $nome");
    }
  }
}

class Nozes extends Frutas {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor, int diasDesdeColheita,
       this.porcentagemOleoNatural) : super(nome, peso, cor, sabor, diasDesdeColheita);

  @override
  void fazerMassa() {
    print("Tirar a casca");
    super.fazerMassa();
  }
}

abstract class Bolo {
  void separarIngredientes();
  void fazerMassa();
  void assar();

}
