import 'package:flutter/material.dart';

abstract class ITheme {
  ThemeData? themeData;
  Color? primaryColor;
  TextTheme? textTheme;
  TextButtonThemeData? textButtonTheme;
  InputDecorationTheme? inputDecorationTheme;
  bool? useMaterial3;
  ColorScheme? colorScheme;
}
