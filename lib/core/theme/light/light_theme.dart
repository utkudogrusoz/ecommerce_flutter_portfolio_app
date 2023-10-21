import 'package:ecommerce_portolio_app/core/constants/color_constant.dart';
import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData lightTheme = ThemeData(
    textTheme: const TextTheme(
      labelSmall: TextStyle(
        color: ColorConstant.lightTextFieldLabelColor,
        fontSize: 14,
      ),
      titleSmall: TextStyle(
        color: ColorConstant.lightButtonTextColor,
        fontSize: 14,
      ),
      titleMedium: TextStyle(
        color: ColorConstant.lightTitleTextColor,
        fontSize: 26,
      ),
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            color: ColorConstant.lightButtonTextColor,
            fontSize: 14,
          ),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: ColorConstant.lightTextFieldBackgroundColor,
    ),
    useMaterial3: true,
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: ColorConstant.lightPrimaryColor,
      background: ColorConstant.lightBackgroundColor,
      secondary: Colors.white,
    ),
  );
}