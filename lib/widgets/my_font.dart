import 'package:flutter/material.dart';

class MyFont extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  const MyFont(
      {super.key,
      required this.text,
      this.color = Colors.white,
      this.fontWeight = FontWeight.w400,
      this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
