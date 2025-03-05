import 'dart:convert';

class Car {
  final int id;
  final int year;
  final String make;
  final String model;
  final String type;

  Car({
    required this.id,
    required this.year,
    required this.make,
    required this.model,
    required this.type,
  });

  // Constructor per crear un objecte Car a partir d'un Map
  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
      id: map['id'] as int,
      year: map['year'] as int,
      make: map['make'] as String,
      model: map['model'] as String,
      type: map['type'] as String,
    );
  }

  // Mètode per convertir l'objecte Car a un Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'year': year,
      'make': make,
      'model': model,
      'type': type,
    };
  }

  // Conversió directa de una cadena JSON a un objecte Car
  factory Car.fromJson(String source) => Car.fromMap(json.decode(source));

  // Convertir l'objecte Car a una cadena JSON
  String toJson() => json.encode(toMap());
}
