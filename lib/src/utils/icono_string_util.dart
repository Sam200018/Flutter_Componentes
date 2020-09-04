import 'package:flutter/material.dart';

final _icon = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'donut_large': Icons.format_clear,
  'input': Icons.input,
  'tune': Icons.tune,
  'list': Icons.list,
};

Icon getICon(String nombreICono) {
  return Icon(
    _icon[nombreICono],
    color: Colors.blue,
  );
}
