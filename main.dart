import 'tabuleiro.dart';
import 'jogador.dart';
import 'computador.dart';
import 'colorir.dart';

void main(){
  
  Tabuleiro tabuleiro = Tabuleiro();
  List<String> token = [Colorir.azul('X'), Colorir.vermelho('O')];
  int vezDeQuem = 0;

  tabuleiro.imprimirTabuleiro();
  Enum estadoTabuleiro = tabuleiro.verificaVencedor();
  while(estadoTabuleiro == EstadoTabuleiro.INCOMPLETO){

    if(vezDeQuem == 0){
      tabuleiro.setJogada(token[vezDeQuem], Jogador.obtemJogada);
    }else{
      tabuleiro.setJogada(token[vezDeQuem], Computador.obtemJogada);
    }
    
    tabuleiro.imprimirTabuleiro();
    estadoTabuleiro = tabuleiro.verificaVencedor();

    if(estadoTabuleiro == EstadoTabuleiro.VITORIA){
      print("O jogador ${token[vezDeQuem]} venceu!");
      break;
    }
    else if(estadoTabuleiro == EstadoTabuleiro.EMPATE){
      print("O jogo empatou!");
      break;
    }
    vezDeQuem = (vezDeQuem + 1) % 2;
  }
}

