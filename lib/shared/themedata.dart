import 'package:flutter/material.dart';

class CLThemeData {
  CLThemeData();

  ThemeData light() {
    ThemeData td = ThemeData.light();
    ColorPalette c = ColorPalette.light();

    return ThemeData(
      scaffoldBackgroundColor: c.scaffold,
      iconTheme: IconThemeData(
        color: c.primary,
      ), // Just Icon and IconButton
      colorScheme: ColorScheme(
        primary: c.primary, // Elevated Button Background,
        //TextButton's child's text/icon color,outlinedbutton's
        //child's text/icon color
        onPrimary: c.onPrimary, // Elevated Buttons innerText color
        primaryVariant: Colors.orange,
        background: c.background,
        onBackground: Colors.black,
        secondary: c.secondary,
        onSecondary: c.onSecondary,
        secondaryVariant: Colors.deepOrange,
        error: c.error,
        onError: c.onError,
        surface: Colors.white,
        onSurface: Colors.black,
        brightness: Brightness.light,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: c.background,
        actionsIconTheme: IconThemeData(color: c.primary),
        iconTheme: IconThemeData(
          color: c.primary, // Leading Widget's Color
        ),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: c.primary,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 2,
      ),
      textTheme: TextTheme(
        headline4: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Colors.black,
        ),
        headline5: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        headline6: TextStyle(
          color: c.onBackground,
          fontWeight: FontWeight.bold,
        ),
        subtitle1: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: c.primary,
        foregroundColor: c.onPrimary,
      ),
    );
  }

  ThemeData dark() {
    ThemeData td = ThemeData.dark();
    ColorPalette c = ColorPalette.dark();

    return ThemeData(
      scaffoldBackgroundColor: c.scaffold,
      iconTheme: IconThemeData(
        color: c.primary,
      ), // Just Icon and IconButton
      colorScheme: ColorScheme(
        primary: c.primary, // Elevated Button Background,
        //TextButton's child's text/icon color,outlinedbutton's
        //child's text/icon color
        onPrimary: c.onPrimary, // Elevated Buttons innerText color
        primaryVariant: Colors.orange,
        background: c.background,
        onBackground: Colors.black,
        secondary: c.secondary,
        onSecondary: c.onSecondary,
        secondaryVariant: Colors.deepOrange,
        error: c.error,
        onError: c.onError,
        surface: Colors.white,
        onSurface: Colors.black,
        brightness: Brightness.light,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: c.background,
        actionsIconTheme: IconThemeData(color: c.primary),
        iconTheme: IconThemeData(
          color: c.primary, // Leading Widget's Color
        ),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: c.primary,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 2,
      ),
      textTheme: TextTheme(
        headline4: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Colors.black,
        ),
        headline5: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        headline6: TextStyle(
          color: c.onBackground,
          fontWeight: FontWeight.bold,
        ),
        subtitle1: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: c.primary,
        foregroundColor: c.onPrimary,
      ),
    );
  }
}

class ColorPalette {
  Color primary = Color(0xFFD80E64);
  Color onPrimary = Colors.white;
  Color secondary = Color(0xFFFED271);
  Color onSecondary = Colors.white;
  Color error = Colors.red;
  Color onError = Colors.white;
  Color scaffold = Colors.grey[100];
  Color background = Colors.white;
  Color onBackground = Colors.black;

  ColorPalette({
    this.primary,
    this.onPrimary,
    this.secondary,
    this.onSecondary,
    this.error,
    this.onError,
    this.scaffold,
    this.background,
    this.onBackground,
  });

  factory ColorPalette.light() {
    return ColorPalette(
      primary: Color(0xFFD80E64),
      onPrimary: Colors.white,
      secondary: Color(0xFFFED271),
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.white,
      scaffold: Colors.white,
      background: Colors.white,
      onBackground: Colors.black,
    );
  }

  factory ColorPalette.dark() {
    return ColorPalette(
      primary: Colors.teal.shade400,
      onPrimary: Colors.white,
      secondary: Colors.teal.shade400,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      scaffold: Color(0xFF121212),
      background: Color(0xFF1F1F1F),
      onBackground: Colors.white,
    );
  }
}
