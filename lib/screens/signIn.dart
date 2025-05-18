import 'package:ai_life_assistant/screens/Tasks.dart';
import 'package:ai_life_assistant/screens/signUp.dart';
import 'package:ai_life_assistant/widgets/textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

Future<void> signIn(BuildContext context, String email, String password) async {
  if (email.isEmpty || password.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Email or Password field is empty"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
  FirebaseAuth auth = FirebaseAuth.instance;
  try {
    await auth.signInWithEmailAndPassword(email: email, password: password);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Login Successful!"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
    );

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Tasks(),
        ));
  } catch (e) {
    print({'{e}'});
  }
}

class _SigninState extends State<Signin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 133.47.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome Back ! ",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(
            height: 150.h,
          ),
          signUpTextfield(
              inputController: emailController,
              fieldName: "E-mail",
              showText: false),
          SizedBox(
            height: 20.h,
          ),
          signUpTextfield(
            inputController: passwordController,
            fieldName: "Password",
            showText: true,
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  signIn(
                    context,
                    emailController.text.trim(),
                    passwordController.text.trim(),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  width: 374.w,
                  height: 63.h,
                  child: Center(
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: "Sign Up",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
