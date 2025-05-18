import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class signUpTextfield extends StatefulWidget {
  final TextEditingController inputController;
  final String fieldName;
  final bool showText;
  const signUpTextfield(
      {super.key,
      required this.inputController,
      required this.fieldName,
      required this.showText});

  @override
  State<signUpTextfield> createState() => signUpTextfieldState();
}

class signUpTextfieldState extends State<signUpTextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 9,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(
                18,
              ),
            ),
            child: TextField(
              obscureText: widget.showText,
              controller: widget.inputController,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onSecondary,
                )),
                hintText: "    ${widget.fieldName}",
                hintStyle: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
            ),
            height: 63.h,
            width: 374.w,
          ),
        ],
      ),
    );
  }
}
