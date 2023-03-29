import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  primaryColor: Colors.blueGrey,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.blueGrey,
  ).copyWith(
    secondary: Colors.blueGrey[300],
    surface: Colors.blueGrey[100],
  ),
  textTheme: const TextTheme(
    displaySmall: TextStyle(
      color: Colors.black,
      fontSize: 24,
      overflow: TextOverflow.ellipsis,
    ),
  ),
  primaryTextTheme: const TextTheme(
    labelLarge: TextStyle(
      fontSize: 16,
    ),
  ),
);
