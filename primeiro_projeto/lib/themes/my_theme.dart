import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  primaryColor: Colors.blueGrey,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.blueGrey,
  ).copyWith(
    secondary: Colors.blueGrey[300],
    surface: Colors.blue,
  ),
);
