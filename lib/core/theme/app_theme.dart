import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Main Brand Colors
  static const Color primary = Color(0xFFF47430); // Orange
  static const Color accent = Color(0xFFF6B409);  // Gold-ish
  static const Color background = Color(0xFF0F0F0F); // Dark background
  static const Color cardColor = Color(0xFF1A1A1A); // Dark card
  static const Color textLight = Colors.white;
  static const Color textDim = Colors.white70;

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    primaryColor: primary,
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,

    cardColor: cardColor,

    appBarTheme: const AppBarTheme(
      backgroundColor: background,
      elevation: 0,
    ),

    colorScheme: const ColorScheme.dark(
      primary: primary,
      secondary: accent,
      surface: background,
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFF1C1C1E),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
      hintStyle: const TextStyle(color: Colors.white38),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}
