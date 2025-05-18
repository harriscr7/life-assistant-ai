import 'package:ai_life_assistant/screens/signUp.dart';
import 'package:ai_life_assistant/theme/theme.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
// go onto the next page after a timer of 5 seconds
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignupScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.4,
            child: Container(),
          ),
          Icon(
            Icons.task_alt_sharp,
            color: Theme.of(context).colorScheme.onPrimary,
            size: 90,
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          // app name
          Text(
            "AI-Life Assistant",
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 32,
              fontFamily: "Sora",
              fontWeight: FontWeight.w600,
            ),
          ),
          // one liner
          Text(
            "Your friendly everyday task manager",
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontFamily: "Sora",
            ),
          ),
          Spacer(),
          Image.asset("lib/assets/images/splashScreenBottom.png"),
        ],
      ),
    );
  }
}
