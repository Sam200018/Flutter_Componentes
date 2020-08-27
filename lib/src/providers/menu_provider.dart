import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    cargarData();
  }

  cargarData() {
    //El rootBundle es solo para poder cargar el json y solo poder mostrarlo en consola
    rootBundle.loadString('data/menu_opts.json').then(
      (data) {
        print(data);
      },
    );
  }
}

final menuProvider =
    new _MenuProvider(); // como solo queremos que se cargue una sola vez tenemos que hacer la clase privada y hacer que la instacia sea afuera de la clase
//y esa instancia la ponemos en home_page.dart
