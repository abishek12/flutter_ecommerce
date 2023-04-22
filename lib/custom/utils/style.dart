import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Define the primary, secondary, and tertiary colors
const Color primaryColor = Color(0xFFEB455F);
const Color secondaryColor = Color(0xFFBAD7E9);
const Color tertiaryColor = Color(0xFFFCFFE7);

// Define the light theme
final ThemeData lightTheme = ThemeData(
  primaryColor: primaryColor,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: primaryColor,
    secondary: secondaryColor,
    background: tertiaryColor,
    surface: tertiaryColor,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.black38,
  ),
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(
    bodyLarge: const TextStyle(
      color: Colors.black,
    ),
  ),
  useMaterial3: true,
);

// Define the dark theme
final ThemeData darkTheme = ThemeData(
  primaryColor: primaryColor,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: primaryColor,
    secondary: secondaryColor,
    background: Color(0xff252525),
    surface: Color(0xff333333),
    onPrimary: Colors.white,
    onSecondary: Colors.black,
  ),
  expansionTileTheme: const ExpansionTileThemeData(
    collapsedTextColor: Colors.white,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white24,
  ),
  listTileTheme: const ListTileThemeData(
    textColor: Colors.white,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: TextStyle(
      color: Colors.black54,
    ),
  ),
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(
    bodyLarge: const TextStyle(
      color: Colors.white,
    ),
    bodyMedium: const TextStyle(
      color: Colors.white,
    ),
    bodySmall: const TextStyle(
      color: Colors.white,
    ),
  ),
  useMaterial3: true,
);
