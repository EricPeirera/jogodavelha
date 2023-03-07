import 'dart:io';
import 'colorir.dart';

abstract class Jogador{
  
  static List<int> obtemJogada(){

    List<int> jogada = [];
    String? input;
    for(int i = 0; i < 2; i++){

      while (true){
        try{
          if(i == 0){
            stdout.write("Digite o valor da linha:\n>>");
          }else{
            stdout.write("Digite o valor da coluna:\n>>");
          }
          Colorir.ConsoleVerde();
          input = stdin.readLineSync();
          Colorir.ConsolePadrao();
        } 
        catch(e) {
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
    jogada.add(int.parse(input));
    }
    return jogada;
  }
}