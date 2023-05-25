void main() {
  ///Comentário de documentação

  //informações sobre persona
  int idade = 21;
  double altura = 1.77;
  bool geek = false;
  const String nome = "Israel Andreotti";
  final String apelido = "Isra";
  var time = "inter";

  List<dynamic> israel = [idade, altura, nome, apelido, geek, time];

  print(israel);

  //o número dentro dos colchetes se refere ao indice do array
  print("Meu apelido é ${israel[3]} ");
  print("Meu nome é ${israel[2]}");
  print("Tenho ${israel[0]} anos");
  print("Tenho ${israel[1]} de altura");
  print("Eu torço (infelizmente) para o ${israel[5]}");

}