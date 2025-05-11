import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
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
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Center(
            child: Image.asset("lib/assets/images/signUp.png"),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
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
            height: MediaQuery.of(context).size.height * 0.05,
          ),

          // Full name
          Padding(
            padding: const EdgeInsets.only(left: 52.0),
            child: Row(
              children: [
                Text(
                  "Full Name ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),

          // full name textfield

          // email

          Padding(
            padding: const EdgeInsets.only(left: 52.0),
            child: Row(
              children: [
                Text(
                  "Email ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          // email textfield

          // password

          Padding(
            padding: const EdgeInsets.only(left: 52.0),
            child: Row(
              children: [
                Text(
                  "Password ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),

          // confirm password

          Padding(
            padding: const EdgeInsets.only(left: 52.0),
            child: Row(
              children: [
                Text(
                  "Confirm Password",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),

          // create account elevated button

          //Already have an account?

          // Login -> Login screen
        ],
      ),
    );
  }
}
