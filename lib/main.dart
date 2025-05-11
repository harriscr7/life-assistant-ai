import 'package:ai_life_assistant/screens/splashScreen.dart';
import 'package:ai_life_assistant/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme.light,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
      
    );
  }
}
