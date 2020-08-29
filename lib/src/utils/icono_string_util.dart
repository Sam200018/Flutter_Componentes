import 'package:flutter/material.dart';

final _icon = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
};

Icon getICon(String nombreICono) {
  return Icon(
    _icon[nombreICono],
    color: Colors.blue,
  );
}