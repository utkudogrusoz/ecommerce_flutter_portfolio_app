import 'package:ecommerce_portolio_app/core/constants/color_constant.dart';
import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData darkTheme = ThemeData(
    textTheme: const TextTheme(
      labelSmall: TextStyle(
        color: ColorConstant.darkTextFieldLabelColor,
        fontSize: 14,
      ),
      titleSmall: TextStyle(
        color: ColorConstant.darkButtonTextColor,
        fontSize: 14,
      ),
      titleMedium: TextStyle(
        color: ColorConstant.darkTitleTextColor,
        fontSize: 26,
      ),
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            color: ColorConstant.darkButtonTextColor,
            fontSize: 14,
          ),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: ColorConstant.darkTextFieldBackgroundColor,
    ),
    useMaterial3: true,
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: ColorConstant.darkPrimaryColor,
      background: ColorConstant.darkBackgroundColor,
      secondary: ColorConstant.darkBackgroundColor,
    ),
  );
}
