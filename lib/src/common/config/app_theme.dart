import 'package:flutter/material.dart';

import 'custom_shadow_colors.dart';

class AppTheme {
  static const Color headerBoxShadow1 = Color(0xFF000033);
  static const Color headerBoxShadow2 = Color(0xFFBEBEBE);
  static const Color headerBoxShadow3 = Color(0xFF24232F);

  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 57, fontWeight: FontWeight.bold, color: Colors.black),
      displayMedium: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.black),
      displaySmall: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
      headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
      headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87),
      titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black87),
      bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
      bodySmall: TextStyle(fontSize: 12, color: Colors.black54),
      labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black87),
      labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black54),
      labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.black54),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF0F1115),
    ),
    shadowColor: headerBoxShadow1,
    extensions: const <ThemeExtension<dynamic>>[
      CustomShadowColors(
        shadow1: headerBoxShadow1,
        shadow2: headerBoxShadow2,
        shadow3: headerBoxShadow3,
      ),
    ],
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[900],
      elevation: 0,
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 57, fontWeight: FontWeight.bold, color: Colors.white),
      displayMedium: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
      displaySmall: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
      headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
      headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white70),
      titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white70),
      bodyLarge: TextStyle(fontSize: 16, color: Colors.white70),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.white60),
      bodySmall: TextStyle(fontSize: 12, color: Colors.white60),
      labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white70),
      labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white60),
      labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.white60),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),
    badgeTheme: const BadgeThemeData(
      backgroundColor: Color(0xFF8B88EF),
      offset: Offset(10, -5),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF0F1115),
    ),
    shadowColor: headerBoxShadow1,
    extensions: const <ThemeExtension<dynamic>>[
      CustomShadowColors(
        shadow1: headerBoxShadow1,
        shadow2: headerBoxShadow2,
        shadow3: headerBoxShadow3,
      ),
    ],
  );
}
