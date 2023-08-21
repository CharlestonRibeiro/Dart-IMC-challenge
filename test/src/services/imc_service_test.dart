import 'package:dart_imc_challenge/src/models/person_model.dart';
import 'package:dart_imc_challenge/src/services/imc_service.dart';
import 'package:test/test.dart';

final imcService = ImcService();
final personModel = PersonModel(name: 'Charles', weight: 80, height: 1.70);

void main() {
  test('Calculate imc service success...', () async {
    final result = imcService.calculateIMC(personModel: personModel);
    expect(result, equals(27.7));
  });
}
