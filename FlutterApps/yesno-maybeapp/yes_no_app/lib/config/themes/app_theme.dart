import 'package:flutter/material.dart';


final List<Color> _colores = [Colors.black,Colors.red , Colors.yellow,Colors.pink,Colors.green];


class AppTheme {
  
  final int selectedColor;

  AppTheme({
    required this.selectedColor
    }):assert((selectedColor >= 0) && (selectedColor < _colores.length));
  
  
  ThemeData getTheme()
  {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colores[selectedColor]
    );
  }
}