import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';

import 'package:componentes/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componetes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider
    //     .opciones); //imprimimos la intancia importada desde menu_provider.dart
    // menuProvider.cargarData()

    return FutureBuilder(
      future: menuProvider.cargarData(),
      // initialData: [], opcional para poder hacer un loading
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getICon(opt['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);

          // final route = MaterialPageRoute(
          //   builder: (context) => AlertPage(),
          // );

          // Navigator.push(context, route);
        },
      );
      opciones
        ..add(
          widgetTemp,
        )
        ..add(
          Divider(),
        );
    });

    return opciones;
  }
}
