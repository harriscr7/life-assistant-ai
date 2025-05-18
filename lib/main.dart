import 'package:ai_life_assistant/firebase_options.dart';
import 'package:ai_life_assistant/screens/splashScreen.dart';
import 'package:ai_life_assistant/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        theme: appTheme.light,
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: Splashscreen(),
      ),
    );
  }
}
