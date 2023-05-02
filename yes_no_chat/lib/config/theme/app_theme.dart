import 'package:flutter/material.dart';

const Color _color = Color(0XFF581C87);
const List<Color> _colorThemes = [
  _color,
  Colors.black,
  Colors.pink,
  Colors.indigo,
  Colors.red,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData getTheme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      useMaterial3: true,
    );
  }
}
