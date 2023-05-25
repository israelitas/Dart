import 'dart:io';

void main() {
  stdout.write('Digite seu nome: ');
  String nome = stdin.readLineSync()!;
  print('Olá, $nome!');

  stdout.write('Qual é a sua idade? ');
  String idadeInput = stdin.readLineSync()!;
  int idade = int.parse(idadeInput);

  print('Você tem $idade anos. Obrigado por fornecer essas informações!');
}
