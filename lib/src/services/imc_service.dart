import 'package:dart_imc_challenge/src/models/person_model.dart';

class ImcService {
  double calculateIMC({required PersonModel personModel}) {
    double imc = personModel.weight / (personModel.height * personModel.height);
    return imc;
  }

  String interpretIMC({required double imc, required String name}) {
    if (imc < 18.5) {
      return '$name vc está abaixo do peso.';
    } else if (imc >= 18.5 && imc < 24.9) {
      return '$name vc está com o peso normal.';
    } else if (imc >= 25 && imc < 29.9) {
      return '$name vc está com sobrepeso.';
    } else {
      return '$name vc está com obesidade.';
    }
  }
}
