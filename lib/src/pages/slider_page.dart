import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 50.0,
        ),
        child: Column(
          children: [
            _crearSlider(),
            _checkbox(),
            _crearSwitc(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) => setState(() {
                _valorSlider = valor;
              }),
    );
  }

  Widget _checkbox() {
    // return Checkbox(
    //     value: _bloquearCheck,
    //     onChanged: (valor) {
    //       setState(() {
    //         _bloquearCheck = valor;
    //       });
    //     });
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(
          () {
            _bloquearCheck = valor;
          },
        );
      },
    );
  }

  Widget _crearSwitc() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(
          () {
            _bloquearCheck = valor;
          },
        );
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
        'https://i.pinimg.com/originals/fd/72/08/fd7208df8f1ee75e19a313e95673d85b.jpg',
      ),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
