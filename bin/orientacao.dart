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
mostrarMadura (String nome, int dias, {String cor = "azul"}) { //se eu não passar parâmetros a cor padrão será azul
  if (dias > 20) {
     print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }

  if(cor != null) {
    print("A $nome é $cor");
  }
}

// Define quantos dias mínimos para a fruta estar madura
bool funcEstaMadura (int dias) {
  if (dias > 20) {
    return true;
  } else {
    return false;
  }
}

class Fruta {
  String nome;
  double peso;
  String sabor;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.sabor, this.cor, this.diasDesdeColheita, {this.isMadura});

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida a $diasDesdeColheita dias e precisa de $diasParaMadura dias para ficar madura. Ela está madura? $isMadura");
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

}

class Legumes {
  String nome;
  double peso;
  String cor;
  bool isPrecisaCozinhar;

  Legumes(this.nome, this.peso, this.cor, this.isPrecisaCozinhar);
}

class Citricas {
  String nome;
  double peso;
  String cor;
  int diaDesdeColheita;
  bool? isMadura;
  double nivelAzedo;

  Citricas(this.nome, this.peso, this.cor, this.diaDesdeColheita, this.isMadura,
      this.nivelAzedo);
}

class Nozes {
  String nome;
  double peso;
  String cor;
  int diaDesdeColheita;
  bool? isMadura;
  double porcentagemOleoNatural;

  Nozes(this.nome, this.peso, this.cor, this.diaDesdeColheita, this.isMadura,
      this.porcentagemOleoNatural);
}
