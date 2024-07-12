import 'dart:io';
import 'dart:math';
import 'personagem.dart';

void main() {

  bool jogarNovamente = true;

  while(jogarNovamente) {

    print("Bem vindo ao Jogo de Luta! Escolha uma opção: ");
    print("1. Jogar");
    print("2. Sair");

    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao){
      case 1:
        jogar();
        break;

      case 2:
      jogarNovamente = false;
      break;
      default:
        print("Opção Inválida");
    }

  }

  print("Obrigado por Jogar!");

}


void jogar() {

  List<Personagem> personagens = [
    Personagem("Donatello", 100, 100, 50, 30),
    Personagem("Michelangelo", 150, 50, 25, 40),
    Personagem("Leonardo", 120, 70, 20, 10),
    Personagem("Rafael", 150, 80, 40, 40)
  ];

  Random random = Random();
  Personagem computador = personagens[random.nextInt(3)];

  print("Escolha o seu personagem: ");
  for(int i =0; i < personagens.length; i++) {
    print("${i + 1}. ${personagens[i].nome}");
  }

  int escolha = int.parse(stdin.readLineSync()!);
  Personagem jogador = personagens[escolha - 1];

  print("Você escolheu ${jogador.nome}");
  print("O computador escolheu ${computador.nome}");


  while(jogador.vida > 0 && computador.vida > 0){
    print('\nPressione Enter para continuar...');
    stdin.readLineSync();
    print('\x1B[2J\x1B[0;0H');

    print('Turno do jogador');
    print('Escolha um ataque');
    print('1. Ataque Normal');
    print('2. Ataque Especial');
    print('3. Sair');

    int ataqueEscolhido = int.parse(stdin.readLineSync()!);

  }

}