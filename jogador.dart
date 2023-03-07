import 'dart:io';
import 'jogavel.dart';
import 'colorir.dart';

class Jogador implements Jogavel{
  String token = 'X';

  int _obtemJogadaParcial(){

    String? input;
    
    while (true){

      try{
        input = stdin.readLineSync();
      }catch(e){
        print(Colorir.amareloClaro("Erro! Posição inválida."));
        continue;
      }
      
      if (input != null) {
        if (!['0', '1', '2'].contains(input)) {
          print(Colorir.amareloClaro("Erro! Posição inválida."));
        } else {
          break;
        }
      } else {
        print(Colorir.amareloClaro("Erro! Posição inválida."));
      }
    }
    return int.parse(input);
  }

  List<int> obtemJogada (){

    List<int> jogada = [];

    stdout.write("Digite o valor da linha:\n>>");
    Colorir.ConsoleVerde();
    jogada.add(_obtemJogadaParcial());
    Colorir.ConsolePadrao();
    
    stdout.write("Digite o valor da coluna:\n>>");
    Colorir.ConsoleVerde();
    jogada.add(_obtemJogadaParcial());
    Colorir.ConsolePadrao();

    return jogada;
  }

}