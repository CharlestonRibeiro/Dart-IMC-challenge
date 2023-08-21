import 'dart:io';
import 'package:dart_imc_challenge/src/services/imc_service.dart';
import 'package:dart_imc_challenge/src/models/person_model.dart';

class PanelControllers {
  final imcService = ImcService();
  int choice = 3;
  String menu = '''
            Painel de controle:

            1 - Calcular IMC;
            0 - sair
          ''';

  void painelCustom() {
    while (choice != 0) {
      print(menu);
      choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 0:
          print('.:FIM:.');
          break;
        case 1:
          try {
            print('Digite seu nome:');
            final name = stdin.readLineSync()!;
            print('Digite o peso em quilogramas (ex 70):');
            final weight = double.parse(stdin.readLineSync()!);
            print('Digite sua altura (ex 1.75):');
            final height = double.parse(stdin.readLineSync()!);
            final personModel =
                PersonModel(name: name, height: height, weight: weight);
            final imc = imcService.calculateIMC(personModel: personModel);
            print('');
            print('Resultado:');
            print(imcService.interpretIMC(imc: imc, name: name));
            print('');
          } catch (e) {
            print('Erro no que foi digitado!');
            print('');
            print('Tente novamente');
          }
          break;
        default:
          print('Escolha invalida!');
          print('');
          break;
      }
    }
  }
}
