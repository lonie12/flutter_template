import 'package:flutter/material.dart';
import 'package:mainuse/helpers/constants.dart';

// APP LIGHT THEME
final themeLight = ThemeData(
  scaffoldBackgroundColor: const Color(0xFFF9F9F9),
  primaryColor: appPrimaryColor,
  colorScheme: ColorScheme.fromSeed(
    seedColor: appPrimaryColor,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
  fontFamily: 'Nunito',
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 11,
    ),
    hoverColor: greyTextColor,
    filled: true,
    fillColor: Colors.white,
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade400, width: 0.5),
      borderRadius: BorderRadius.circular(12),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade400, width: 0.5),
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade400, width: 0.5),
      borderRadius: BorderRadius.circular(12),
    ),
  ),

  // Définir la couleur par défaut pour le texte
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Color(0xFF2B3445),
      fontSize: 14,
      fontFamily: 'Nunito',
      // fontFamily: 'Muli',
      // color: Colors.red,
    ), // Couleur du texte par défaut
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
