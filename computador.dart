import 'jogavel.dart';
import 'dart:math';

class Computador implements Jogavel{

  List<int> obtemJogada (){
    
    Random random = Random();
    return [random.nextInt(3), random.nextInt(3)];
  }
}