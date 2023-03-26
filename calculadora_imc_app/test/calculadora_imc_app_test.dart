import 'package:test/test.dart';
import 'package:calculadora_imc_app/calculadora_imc_app.dart';

void main() {
  group("Calcular o IMC:", () {
    var valuesToTest = {
      {'peso': 40, 'altura': 1.60}: 'Magreza Grave',
      {'peso': 60, 'altura': 1.75}: 'Saudável',
      {'peso': 80, 'altura': 1.50}: 'Obsidade Grau II (severa)'
    };
    valuesToTest.forEach((values, expected) {
      test('Entrada: $values Esperado:$expected', () {
        expect(
            CalculadoraIMC.calcularIMC(double.parse(values["peso"].toString()),
                double.parse(values["altura"].toString())),
            equals(expected));
      });
    });
  });
}
