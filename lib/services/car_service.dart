import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/car.dart'; // 👈 Import correcte

class CarService {
  static const String apiUrl = "https://car-data.p.rapidapi.com/cars";
  static const String apiKey = "4b28a0f556mshe5513ec55973b40p16ed00jsnf3963c723f37";

  Future<List<Car>> getCars() async {
    final response = await http.get(
      Uri.parse(apiUrl),
      headers: {
        'X-RapidAPI-Key': apiKey,
        'X-RapidAPI-Host': 'car-data.p.rapidapi.com',
      },
    );

    if (response.statusCode == 200) {
      return Car.carModelFromJson(response.body); // ✅ Funció corregida
    } else {
      throw Exception('Error carregant les dades');
    }
  }
}
