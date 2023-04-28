import 'package:flutter/material.dart';


const Color _customColor = Colors.deepPurpleAccent;
const List < Color> _colorThemes = [
  _customColor,
  Colors.redAccent,
  Colors.green,
  Colors.pinkAccent,
  Colors.orangeAccent,
  Colors.yellowAccent
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0 
    });

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[2]
    );
  }
}
