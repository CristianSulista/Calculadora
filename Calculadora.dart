import 'dart:io';

void main() {
  while (true) {
    print("Opções:");
    print("Digite 'soma' para somar");
    print("Digite 'subtracao' para subtrair");
    print("Digite 'multiplicacao' para multiplicar");
    print("Digite 'divisao' para dividir");
    print("Digite 'sair' para encerrar o programa");

    String escolha = stdin.readLineSync()!;

    if (escolha == "sair") {
      break;
    }

    if (escolha == "soma" ||
        escolha == "subtracao" ||
        escolha == "multiplicacao" ||
        escolha == "divisao") {
      print("Digite o primeiro número:");
      double num1 = double.parse(stdin.readLineSync()!);

      print("Digite o segundo número:");
      double num2 = double.parse(stdin.readLineSync()!);

      double resultado;

      switch (escolha) {
        case "soma":
          resultado = num1 + num2;
          break;
        case "subtracao":
          resultado = num1 - num2;
          break;
        case "multiplicacao":
          resultado = num1 * num2;
          break;
        case "divisao":
          if (num2 == 0) {
            print("Erro: Divisão por zero!");
            continue;
          }
          resultado = num1 / num2;
          break;
      }

      print("Resultado: $resultado");
    } else {
      print("Opção inválida. Tente novamente.");
    }
  }
}