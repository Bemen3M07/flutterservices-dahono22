import 'package:flutter_test/flutter_test.dart';
import '../services/car_service.dart';
import '../models/car.dart';

void main() {
  test('Test de connexió a l’API i obtenció de dades', () async {
    final service = CarService();
    final cars = await service.getCars();
    expect(cars, isA<List<Car>>());
    expect(cars.isNotEmpty, true);
  });
}