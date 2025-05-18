import 'package:ai_life_assistant/screens/signIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

Future<bool> signOut() async {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  await firebaseAuth.signOut();
  return true;
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () async {
              if (await signOut()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signin(),
                  ),
                );
              } else {
                print("Error in logging out");
              }
            },
            icon: Icon(Icons.logout_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          Text("Tasks"),
        ],
      ),
    );
  }
}
