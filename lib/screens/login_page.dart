import 'package:bubble_tea_app/screens/home_page.dart';
import 'package:bubble_tea_app/widgets/divider.dart';
import 'package:bubble_tea_app/widgets/my_card.dart';
import 'package:bubble_tea_app/widgets/my_font.dart';
import 'package:bubble_tea_app/widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.brown[100],
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 50, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //logo
              Center(
                child: Image.asset(
                  "assets/images/logo_image.png",
                  width: 300,
                ),
              ),

              //name/title
              const MyFont(
                text: "Bubble tea is life",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),

              //textFields
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: MyTextField(
                    hintText: "Email",
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.brown[900],
                    )),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: MyTextField(
                  hintText: "Password",
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.brown[900],
                    size: 30,
                  ),
                  suffixIcon: const Icon(Icons.visibility_off),
                ),
              ),
              const SizedBox(height: 10),

              //forgotPassword?
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: MyFont(
                  text: "Forgot password?",
                  color: Colors.brown.shade400,
                ),
              ),
              const SizedBox(height: 25),

              //SiginButton
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown.shade700,
                      shape: const StadiumBorder(),
                      fixedSize: const Size(double.maxFinite, 60)),
                  child: const MyFont(
                    text: "Sign in",
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(height: 20),

              //or------continuewith---------
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyDivider(),
                  MyFont(text: "OR continue with"),
                  MyDivider(),
                ],
              ),
              const SizedBox(height: 20),

              //cards
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyCard(imgPath: "assets/images/googlelogo.png"),
                  MyCard(imgPath: "assets/images/twitterlogo2.png"),
                  MyCard(
                      imgPath: "assets/images/apple_logo-removebg-preview.png"),
                ],
              ),
              const SizedBox(height: 30),

              //not a member?
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 80, right: 10),
                    child: MyFont(
                        text: "Not a member? ",
                        color: Colors.white70,
                        fontSize: 18),
                  ),
                  MyFont(
                    text: "Register now",
                    color: Colors.brown,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
