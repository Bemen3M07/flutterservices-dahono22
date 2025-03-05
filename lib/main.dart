import 'package:flutter/material.dart';
import 'models/car.dart';
import 'helpers/json_helpers.dart';

void main() {
  // Exemple de cadena JSON (la resposta que has proporcionat)
  String jsonResponse = '''
  [
    {"id":9582,"year":2008,"make":"Buick","model":"Enclave","type":"SUV"},
    {"id":9583,"year":2006,"make":"MINI","model":"Convertible","type":"Convertible"},
    {"id":9584,"year":2019,"make":"Volvo","model":"XC90","type":"SUV"},
    {"id":9585,"year":1999,"make":"Ford","model":"Taurus","type":"Sedan, Wagon"},
    {"id":9586,"year":2020,"make":"Volvo","model":"XC60","type":"SUV"},
    {"id":9587,"year":2006,"make":"HUMMER","model":"H2","type":"SUV, Pickup"},
    {"id":9588,"year":2016,"make":"GMC","model":"Sierra 1500 Crew Cab","type":"Pickup"},
    {"id":9589,"year":2008,"make":"GMC","model":"Canyon Crew Cab","type":"Pickup"},
    {"id":9590,"year":2016,"make":"Subaru","model":"Outback","type":"SUV"},
    {"id":9591,"year":2010,"make":"Mitsubishi","model":"Outlander","type":"SUV"}
  ]
  ''';

  // Processar la resposta JSON per obtenir una llista de cotxes
  List<Car> cars = parseCars(jsonResponse);

  // Mostrar per consola el resultat (per a comprovació)
  for (var car in cars) {
    print('ID: ${car.id}, Marca: ${car.make}, Model: ${car.model}, Any: ${car.year}, Tipus: ${car.type}');
  }

  runApp(MyApp(cars: cars));
}

class MyApp extends StatelessWidget {
  final List<Car> cars;
  const MyApp({Key? key, required this.cars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pràctica JSON Car',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(cars: cars),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Car> cars;
  const HomeScreen({Key? key, required this.cars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Llista de Cotxes'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          final car = cars[index];
          return ListTile(
            title: Text('${car.make} ${car.model}'),
            subtitle: Text('Any: ${car.year} - Tipus: ${car.type}'),
          );
        },
      ),
    );
  }
}
