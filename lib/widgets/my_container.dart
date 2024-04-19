import 'package:bubble_tea_app/widgets/my_font.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String imagePath;
  final void Function()? onTap;

  const MyContainer(
      {super.key,
      required this.productName,
      required this.productPrice,
      required this.imagePath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(right: 15),
        margin: const EdgeInsets.only(top: 20),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.brown[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //productImage
            Image.asset(imagePath, width: 120),
    
            // productName / price
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                //productName
                MyFont(
                  text: productName,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown.shade900,
                ),
                const SizedBox(height: 5),
    
                //productPrice
                MyFont(
                  text: "price \$$productPrice",
                  color: Colors.brown.shade700,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
    
            const SizedBox(width: 20),
    
            //arrow
            const Icon(Icons.arrow_forward_ios, size: 30),
          ],
        ),
      ),
    );
  }
}
