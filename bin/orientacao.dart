void main() {
  String fruta = "Laranja";
  double peso = 97.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce";
  int diasDesdeColheita = 30;
  bool estaMadura = funcEstaMadura(diasDesdeColheita);

  print(funcEstaMadura(22));

  mostrarMadura("maça", 25, cor: "Vermelha");
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
