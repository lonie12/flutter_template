import 'package:flutter/material.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:mainuse/helpers/outline_borders.dart';

// APP LIGHT THEME
final themeLight = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: appPrimaryColor,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
  fontFamily: 'CircularStd',
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: appPrimaryColor.withOpacity(0.01),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 8.0,
    ),
    border: appInputBorder,
    enabledBorder: appInputBorder,
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(medRadius),
        topRight: Radius.circular(medRadius),
      ),
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey[600],
  ),
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Colors.white,
    elevation: 0,
  ),
);
