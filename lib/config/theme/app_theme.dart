import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF0097A7);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.deepOrange,
  Colors.red,
  Colors.pink,
  Color(0xFF00838F),
  Color(0xFF006064),
];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0})
      : assert(selectColor >= 0 && selectColor < _colorThemes.length,
            'selectColor must be between 0 and ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectColor]);
  }
}
