import 'dart:io';

class PanelControllers {
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
          break;

        default:
          print('Escolha invalida!');
          print('');
          break;
      }
    }
  }
}
