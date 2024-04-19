import 'package:bubble_tea_app/widgets/my_container.dart';
import 'package:bubble_tea_app/widgets/my_font.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List drinkData = [
      ["Pearl Milk Tea", "2.9", "assets/images/img2-removebg-preview.png"],
      [
        "Almond Milk Tea",
        "3.5",
        "assets/images/almond_milk_tea-removebg-preview.png"
      ],
      ["Chocolate Tea", "4.5", "assets/images/img4-removebg-preview.png"],
      [
        "Ice Milk Tea",
        "3.7",
        "assets/images/iced_milk_tea-removebg-preview.png"
      ],
      [
        "Bubble Milk Tea",
        "2.6",
        "assets/images/bubble_milk_tea-removebg-preview.png"
      ],
    ];

    void toOrderPage(int index) {}
    return Scaffold(
      backgroundColor: Colors.brown[400],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //MenuIcon
                const Icon(Icons.menu, color: Colors.white, size: 28),
                const SizedBox(height: 20),

                // title
                const MyFont(text: "Bubble Tea Shop", fontSize: 28),
                const SizedBox(height: 10),

                //cards
                SizedBox(
                  height: 600,
                  child: ListView.builder(
                      itemCount: drinkData.length,
                      itemBuilder: (context, index) {
                        return MyContainer(
                            productName: drinkData[index][0],
                            productPrice: drinkData[index][1],
                            imagePath: drinkData[index][2]);
                      }),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.white,
        color: Colors.grey[300],
        tabActiveBorder: Border.all(color: Colors.white),
        tabMargin: const EdgeInsets.only(left: 15, bottom: 10),
        gap: 10,
        textStyle: const TextStyle(fontSize: 18, color: Colors.white),
        tabs: const [
          GButton(
            icon: Icons.home_outlined,
            iconSize: 30,
            text: "Shop",
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            iconSize: 30,
            text: "Cart",
          ),
        ],
      ),
    );
  }
}
