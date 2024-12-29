import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppFormFieldWithPassword extends StatefulWidget {

  final bool isPassword;
  final String hintText;

  const AppFormFieldWithPassword({super.key, required this.isPassword, required this.hintText});

  @override
  State<AppFormFieldWithPassword> createState() => AppFormFieldWithPasswordState();
}

class AppFormFieldWithPasswordState extends State<AppFormFieldWithPassword> {

  bool _obscureText = true;

  //a simple function to hide and un-hide the password
  void hideShowPassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }


  @override
  Widget build(BuildContext context) {
    return TextFormField(
        cursorColor: Colors.white24,

        obscureText: widget.isPassword? _obscureText : false,

        style: const TextStyle(
            color: Colors.white
        ),

        decoration: InputDecoration(
          focusColor: Colors.white24,

          filled: true,
          fillColor: Colors.white24,

          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none
          ),

          hintText: widget.isPassword? '************' : widget.hintText,
          hintStyle: TextStyle(
              color: AppColor().greyBackgroundColor
          ),

          suffixIcon: widget.isPassword? Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: hideShowPassword,
                child: Icon(_obscureText? CupertinoIcons.eye_slash : CupertinoIcons.eye, color: Colors.white24)),
          ): null,
        )
    );
  }
}
