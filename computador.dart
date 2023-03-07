import 'dart:math';

abstract class Computador{

  static List<int> obtemJogada (){
    
    Random random = Random();
    return [random.nextInt(3), random.nextInt(3)];
  }
}