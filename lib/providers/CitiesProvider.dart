import 'package:flutter_riverpod/flutter_riverpod.dart';


final citiesListProvider = StateProvider<List<String>>((ref) {
  return ["Oaxaca", "New York", ];
});

final addCityProvider = Provider((ref) => (String city) {
  final currentCities = ref.read(citiesListProvider);
  ref.read(citiesListProvider.state).state = [...currentCities, city];
});

//Riverpod es un paquete de gestión de estado para Flutter que ofrece una forma sencilla y declarativa de manejar la lógica de
//negocio y el estado de la aplicación. Se basa en el concepto de "provider", que es una forma de proporcionar y consumir valores en
//la aplicación.


//citiesListProvider gestiona el estado de la lista de ciudades, y addCityProvider proporciona una función que permite
//agregar una nueva ciudad a esa lista.