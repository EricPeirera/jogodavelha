import 'colorir.dart';

enum EstadoTabuleiro {
  VITORIA,
  EMPATE,
  INCOMPLETO
}

class Tabuleiro {
  List<List<String>> _campo = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']];

  void imprimirTabuleiro(){
    print(("    0   1   2"));
    print("0   ${_campo[0][0]} | ${_campo[0][1]} | ${_campo[0][2]}");
    print("  -------------");
    print("1   ${_campo[1][0]} | ${_campo[1][1]} | ${_campo[1][2]}");
    print("  -------------");
    print("2   ${_campo[2][0]} | ${_campo[2][1]} | ${_campo[2][2]}\n");
  }


  void setJogada(String token, List<int> obtemJogada()){

    List<int> jogada;

    while(true){
      jogada = obtemJogada();

      if(_campo[jogada[0]][jogada[1]] == ' '){
        _campo[jogada[0]][jogada[1]] = token; 
        break;
      }
      
      else if(token == Colorir.azul('X')){
        print(Colorir.amareloClaro("Erro! Posição inválida."));
      }
      
    }
    
    
  }

  EstadoTabuleiro verificaVencedor(){
    
    //Verifica vitória
    //Verifica linhas
    for(int i = 0; i < 3; i++){
      if(_campo[i][0] != ' ' && _campo[i][0] == _campo[i][1] && _campo[i][0] == _campo[i][2]){
        return EstadoTabuleiro.VITORIA;
      }
    }

    //Verifica colunas
    for(int i = 0; i < 3; i++){
      if(_campo[0][i] != ' ' && _campo[0][i] == _campo[1][i] && _campo[0][i] == _campo[2][i]){
        return EstadoTabuleiro.VITORIA;
      }
    }

    //Verifica diagonal 1
    if(_campo[0][0] != ' ' && _campo[0][0] == _campo[1][1] && _campo[0][0] == _campo[2][2]){
      return EstadoTabuleiro.VITORIA;
    }

    //Verifica diagonal 2
    if(_campo[2][0] != ' ' && _campo[2][0] == _campo[1][1] && _campo[2][0] == _campo[0][2]){
      return EstadoTabuleiro.VITORIA;
    }

    //Verifica empate
    for(int lin = 0; lin < 3; lin++){
      for(int col = 0; col < 3; col++){
        if(_campo[lin][col] == ' '){
          return EstadoTabuleiro.INCOMPLETO;
        }
      }
    }
    return EstadoTabuleiro.EMPATE;

  }
}