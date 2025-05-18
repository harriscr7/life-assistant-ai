import 'package:ai_life_assistant/screens/Tasks.dart';
import 'package:ai_life_assistant/screens/signIn.dart';
import 'package:ai_life_assistant/widgets/textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

Future<void> signUp(BuildContext context, String email, String password) async {
  if (email.isEmpty || password.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Email or password is empty"),
    ));
    return;
  }

  FirebaseAuth auth = FirebaseAuth.instance;
  try {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
    ScaffoldMessenger.of(context)
        .showSnackBar(
          SnackBar(content: Text("Sign up successful!")),
        )
        .closed
        .then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Tasks()),
      );
    });
  } on FirebaseAuthException catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(e.message ?? "Sign up failed")),
    );
  }
}

class _SignupScreenState extends State<SignupScreen> {
  // controllers for the 4 text fields
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Center(
            child: Image.asset(
              "lib/assets/images/group.png",
              height: 332.22.h,
              width: 280.w,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          // Create account text

          Padding(
            padding: const EdgeInsets.only(left: 52.0),
            child: Row(
              children: [
                Text(
                  "Create account",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          //Hi, kindly fill in the form to proceed text
          Padding(
            padding: const EdgeInsets.only(left: 52.0),
            child: Row(
              children: [
                Text(
                  "Hi, kindly fill in the form to proceed ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 20.h,
          ),

          // Full name

          signUpTextfield(
              inputController: fullNameController,
              fieldName: "Full Name",
              showText: false),
          // email textfield
          SizedBox(
            height: 20.h,
          ),

          signUpTextfield(
            inputController: emailController,
            fieldName: "E-mail",
            showText: false,
          ),

          SizedBox(
            height: 20.h,
          ),
          // password textfield
          signUpTextfield(
            inputController: passwordController,
            fieldName: "Password",
            showText: true,
          ),

          // SignUp button

          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ElevatedButton(
              onPressed: () {
                print("Sign Up Pressed");
                signUp(context, emailController.text.trim(),
                    passwordController.text.trim());
              },
              child: Text(
                "Sign Up",
                style:
                    TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),

          //Already have an account?

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 293.14.w,
                height: 20.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "    Already have an account? ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontFamily: "Sora",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signin(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
