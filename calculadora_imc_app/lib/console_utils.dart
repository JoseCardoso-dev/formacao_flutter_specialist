import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String _lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDoubleComTexto(String texto) {
    do {
      try {
        print(texto);
        var value = double.parse(_lerString());
        if (value > 0) {
          return value;
        } else {
          print("Digite um valor valido!");
        }
      } catch (e) {
        print(e);
      }
    } while (true);
  }

  static String lerStringComTexto(String texto) {
    do {
      try {
        print(texto);
        var value = _lerString();
        if (value != "") {
          return value;
        } else {
          print("Digite um nome valido!");
        }
      } catch (e) {
        print(e);
      }
    } while (true);
  }
}
