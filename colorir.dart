import 'dart:io';

enum Cores {
  BLACK,
  RED,
  GREEN,
  YELLOW,
  BLUE,
  MAGENTA,
  CYAN,
  WHITE,
  GRAY,
  BRIGHTRED,
  BRIGHTGREEN,
  BRIGHTYELLOW,
  BRIGHTBLUE,
  BRIGHTMAGENTA,
  BRIGHTCYAN,
  BRIGHTWHITE,
  DEFAULT
}

extension CoresExtension on Cores {

  String get name {
    switch (this) {
      case Cores.BLACK:
        return '\x1b[30m';
      case Cores.RED:
        return '\x1b[31m';
      case Cores.GREEN:
        return '\x1b[32m';
      case Cores.YELLOW:
        return '\x1b[33m';
      case Cores.BLUE:
        return '\x1b[34m';
      case Cores.MAGENTA:
        return '\x1b[35m'; 
      case Cores.CYAN:
        return '\x1b[36m';
      case Cores.WHITE:
        return '\x1b[37m';
      case Cores.GRAY:
        return '\x1b[90m';
      case Cores.BRIGHTRED:
        return '\x1b[91m';
      case Cores.BRIGHTGREEN:
        return '\x1b[92m';
      case Cores.BRIGHTYELLOW:
        return '\x1b[93m';
      case Cores.BRIGHTBLUE:
        return '\x1b[94m'; 
      case Cores.BRIGHTMAGENTA:
        return '\x1b[95m';
      case Cores.BRIGHTCYAN:
        return '\x1b[96m';
      case Cores.BRIGHTWHITE:
        return '\x1b[97m';     
      case Cores.DEFAULT:
        return '\x1b[m';  
    }
  }
}

abstract class Colorir {
  
  static String vermelho(String string){
    return Cores.RED.name + string + Cores.DEFAULT.name;
  }

  static String verde(String string) {
    return Cores.GREEN.name + string + Cores.DEFAULT.name;
  }

  static String amarelo(String string) {
    return Cores.YELLOW.name + string + Cores.DEFAULT.name;
  }

  static String azul(String string) {
    return Cores.BLUE.name + string + Cores.DEFAULT.name;
  }

  static String magenta(String string) {
    return Cores.MAGENTA.name + string + Cores.DEFAULT.name;
  }

  static String ciano(String string) {
    return Cores.CYAN.name + string + Cores.DEFAULT.name;
  }

  static String branco(String string) {
    return Cores.WHITE.name + string + Cores.DEFAULT.name;
  }

  static String cinza(String string) {
    return Cores.GRAY.name + string + Cores.DEFAULT.name;
  }

  static String vermelhoClaro(String string) {
    return Cores.BRIGHTRED.name + string + Cores.DEFAULT.name;
  }

  static String verdeClaro(String string) {
    return Cores.BRIGHTGREEN.name + string + Cores.DEFAULT.name;
  }

  static String amareloClaro(String string) {
    return Cores.BRIGHTYELLOW.name + string + Cores.DEFAULT.name;
  }

  static String azulClaro(String string) {
    return Cores.BRIGHTBLUE.name + string + Cores.DEFAULT.name;
  }

  static String magentaClaro(String string) {
    return Cores.BRIGHTMAGENTA.name + string + Cores.DEFAULT.name;
  }

  static String cianoClaro(String string) {
    return Cores.BRIGHTCYAN.name + string + Cores.DEFAULT.name;
  }

  static String brancoClaro(String string) {
    return Cores.BRIGHTWHITE.name + string + Cores.DEFAULT.name;
  }

  static void ConsoleVermelho() {
    stdout.write(Cores.RED.name);
  }

  static void ConsoleVerde() {
    stdout.write(Cores.GREEN.name);
  }

  static void ConsoleYellow() {
    stdout.write(Cores.YELLOW.name);
  }

  static void ConsoleBlue() {
    stdout.write(Cores.BLUE.name);
  }

  static void ConsoleMagenta() {
    stdout.write(Cores.MAGENTA.name);
  }

  static void ConsoleCyan() {
    stdout.write(Cores.CYAN.name);
  }

  static void ConsoleWhite() {
    stdout.write(Cores.WHITE.name);
  }

  static void ConsoleGray() {
    stdout.write(Cores.GRAY.name);
  }

  static void ConsoleBrightRed() {
    stdout.write(Cores.BRIGHTRED.name);
  }

  static void ConsoleBrightGreen() {
    stdout.write(Cores.BRIGHTGREEN.name);
  }

  static void ConsoleBrightYellow() {
    stdout.write(Cores.BRIGHTYELLOW.name);
  }

  static void ConsoleBrightBlue() {
    stdout.write(Cores.BRIGHTBLUE.name);
  }

  static void ConsoleBrightMagenta() {
    stdout.write(Cores.BRIGHTMAGENTA.name);
  }

  static void ConsoleBrightCyan() {
    stdout.write(Cores.BRIGHTCYAN.name);
  }

  static void ConsoleBrightWhite() {
    stdout.write(Cores.BRIGHTWHITE.name);
  }

  static void ConsolePadrao(){
    stdout.write(Cores.DEFAULT.name);
  }
}