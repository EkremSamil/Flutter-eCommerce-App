import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/utility/screensize.dart';
import 'package:flutterecommerceapp/screens/signup_screen.dart';

class OnboardScreen extends StatefulWidget {
  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final String _text = "Define yourself in your unique way";
  final _img = "images/onboard.png";

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    final double screenHeight = screenSize.size.height;
    final double screenWidth = screenSize.size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.orange,
                  width: 300,
                  child: Text(
                    _text,
                    style: const TextStyle(
                      fontSize: 52,
                      fontWeight: FontWeight.bold,
                      wordSpacing: -5,
                      letterSpacing: -3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200, top: 100),
                child: Container(
                  width: screenWidth / 1.2,
                  height: screenWidth / 1,
                  child: Image.asset(
                    _img,
                    height: screenHeight / 1.4,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: screenWidth / 1.2,
            height: screenHeight / 12,
            child: FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => SignUpScreen())));
              },
              label: const Text("Get Started"),
              icon: const Icon(Icons.subdirectory_arrow_right_sharp),
              backgroundColor: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
