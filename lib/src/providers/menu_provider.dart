import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {}
  Future<List<dynamic>> cargarData() async {
    //El rootBundle es solo para poder cargar el json y solo poder mostrarlo en consola
    final resp = await rootBundle
        .loadString('data/menu_opts.json'); //asiganos a una variable final

    Map dataMap = json.decode(resp); //esa variable final rep la decodificamos
    print(dataMap['rutas']);
    opciones = dataMap['rutas']; //y la decodificación la ponemos en opciones

    return opciones; // regremos opciones siendo un future builder y que va a regresar la información de manera asincrona
  }
}

final menuProvider =
    new _MenuProvider(); // como solo queremos que se cargue una sola vez tenemos que hacer la clase privada y hacer que la instacia sea afuera de la clase
//y esa instancia la ponemos en home_page.dart
