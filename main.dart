import 'tabuleiro.dart';
import 'jogador.dart';
import 'computador.dart';
import 'colorir.dart';

void main(){
  
  Tabuleiro tabuleiro = Tabuleiro();
  Jogador jogador = Jogador();
  Computador computador = Computador();
  List<String> token = [Colorir.azul('X'), Colorir.vermelho('O')];
  int vezDeQuem = 0;

  tabuleiro.imprimirTabuleiro();
  Enum estadoTabuleiro = tabuleiro.verificaVencedor();
  while(estadoTabuleiro == EstadoTabuleiro.INCOMPLETO){

    if(vezDeQuem == 0){
      tabuleiro.setJogada(token[vezDeQuem], jogador.obtemJogada);
    }else{
      tabuleiro.setJogada(token[vezDeQuem], computador.obtemJogada);
    }
    
    tabuleiro.imprimirTabuleiro();
    estadoTabuleiro = tabuleiro.verificaVencedor();

    if(estadoTabuleiro == EstadoTabuleiro.VITORIA){
      print("O jogador ${token[vezDeQuem]} venceu");
      break;
    }
    else if(estadoTabuleiro == EstadoTabuleiro.EMPATE){
      print("O jogo empatou");
      break;
    }
    vezDeQuem = (vezDeQuem + 1) % 2;
  }
}

