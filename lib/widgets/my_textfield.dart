import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final Icon? suffixIcon;

  const MyTextField(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: hintText == "Password" ? true : false,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIconColor: Colors.brown[900],
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: prefixIcon,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: suffixIcon,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        fillColor: Colors.brown[200],
        filled: true,
      ),
    );
  }
}
