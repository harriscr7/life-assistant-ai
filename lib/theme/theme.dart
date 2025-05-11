import 'package:flutter/material.dart';

class appTheme {
  static const Color primary = Color(0xFFEB1544);
  static const Color secondary = Color(0xFFFFFF);

  static final ThemeData light = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFFEB1544), // your custom red-pink
      onPrimary: Colors.white,
      secondary: Color(0xFF03DAC6),
      onSecondary: Colors.black,
      error: Colors.red, // required error color
      onError: Colors.white, // required onError color
      surface: Colors.grey[200]!, // required surface color
      onSurface: Colors.black, // required onSurface color
      background: Colors.white, // required background color
      onBackground: Colors.black, // required onBackground color
    ),
    fontFamily: 'Sora',
  );
}
