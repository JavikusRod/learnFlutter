import 'package:flutter/material.dart';

final _icon = <String, IconData>{
  "add_alert": Icons.add_alert,
  "accessibility": Icons.accessibility,
  "folder_open": Icons.folder_open,
  "donut_large": Icons.donut_large,
  "tune": Icons.tune,
  "list": Icons.list,
};

Icon getIcon({String iconName = 'add_alert'}) => Icon(_icon[iconName]);
