import 'package:calculadora_imc_app/console_utils.dart';
import 'package:calculadora_imc_app/pessoa.dart';

class CalculadoraIMC {
  static void execute() {
    print("\n=-=-=-=-= CALCULADORA IMC =-=-=-=-=");
    var nome = ConsoleUtils.lerStringComTexto("Digite Seu Nome: ");
    var peso = ConsoleUtils.lerDoubleComTexto("Digite Seu Peso (em quilos): ");
    var altura =
        ConsoleUtils.lerDoubleComTexto("Digite Sua Altura (em metros): ");

    Pessoa pessoa = Pessoa(nome, peso!, altura!);

    print("\n=-=-=-=-= RESULTADO =-=-=-=-=");
    print(
        "Paciente: ${pessoa.getNome()} \nResultado: ${CalculadoraIMC.calcularIMC(pessoa.getPeso(), pessoa.getAltura())}");
    print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
  }

  static String calcularIMC(double peso, double altura) {
    var imc = (peso / (altura * altura));
    late String resultado;
    if (imc < 16) {
      resultado = "Magreza Grave";
    } else if ((imc >= 16) && (imc < 17)) {
      resultado = "Magreza Moderada";
    } else if ((imc >= 17) && (imc < 18.5)) {
      resultado = "Magreza Leve";
    } else if ((imc >= 18.5) && (imc < 25)) {
      resultado = "Saudável";
    } else if ((imc >= 25) && (imc < 30)) {
      resultado = "Sobrepeso";
    } else if ((imc >= 30) && (imc < 35)) {
      resultado = "Obsidade Grau I";
    } else if ((imc >= 35) && (imc < 40)) {
      resultado = "Obsidade Grau II (severa)";
    } else {
      resultado = "Obsidade Grau III (mórbida)";
    }

    return resultado;
  }
}
