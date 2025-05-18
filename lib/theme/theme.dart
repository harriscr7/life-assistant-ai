import 'package:flutter/material.dart';

class appTheme {
  static const Color primary = Color(0xFF8E97FD);
  static const Color secondary = Color(0xFFF2F3F7);

  static final ThemeData light = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: primary,
      onPrimary: Colors.white,
      secondary: secondary,
      onSecondary: Color(0xFFA1A4B2),
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
