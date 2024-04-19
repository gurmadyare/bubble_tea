import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String imgPath;
  const MyCard({
    super.key,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.brown[100],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Image.asset(
            imgPath,
            width: 60,
          ),
        ],
      ),
    );
  }
}
