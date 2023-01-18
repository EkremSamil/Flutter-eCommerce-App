// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutterecommerceapp/screens/authenticator_screens/login_screen.dart';
import 'package:flutterecommerceapp/screens/homepage_screens/home_screen.dart';
import 'package:flutterecommerceapp/utility/constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

Widget _buildNameTF() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Full Name",
        style: kLabelStyle,
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 60,
        child: TextField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.account_circle_outlined),
            hintText: "Enter Your Name",
            hintStyle: kHintTextStyle,
          ),
        ),
      )
    ],
  );
}

Widget _buildEmailTF() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Email",
        style: kLabelStyle,
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.email_outlined),
            hintText: "Enter Your Email",
            hintStyle: kHintTextStyle,
          ),
        ),
      )
    ],
  );
}

Widget _buildPasswordTF() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Password",
        style: kLabelStyle,
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 60,
        child: TextField(
          style: TextStyle(color: Colors.black),
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.lock_outline),
            hintText: "Enter Your Password",
            hintStyle: kHintTextStyle,
          ),
        ),
      )
    ],
  );
}

Widget _buildSignInWFG() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 50),
    child: Column(
      children: [
        SignInButton(
          Buttons.Google,
          onPressed: () => print("Google Btn Clicked"),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        SignInButton(
          Buttons.Facebook,
          onPressed: () => print("Facebook Btn Clicked"),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        ),
      ],
    ),
  );
}

Widget _buildOrText() {
  return Row(
    // ignore: prefer_const_literals_to_create_immutables
    children: [
      const Expanded(child: Divider(color: Colors.black54)),
      Text("  Or  "),
      const Expanded(child: Divider(color: Colors.black54)),
    ],
  );
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    var a = context;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xffe16b5c),
                  Color(0xffca485c),
                  Color(0xffca485c),
                  Color(0xffca485c),
                  Color(0xffca485c),
                  Color(0xffe16b5c),
                  Color(0xfff39060),
                  Color(0xffffb56b),
                ])),
            // ignore: prefer_const_constructors
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              // ignore: prefer_const_constructors
              padding: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create an account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "Let's Create Your Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 25),
                  _buildNameTF(),
                  const SizedBox(height: 15),
                  _buildEmailTF(),
                  const SizedBox(height: 15),
                  _buildPasswordTF(),
                  const SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: (Text("Sign Up")),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  _buildOrText(),
                  const SizedBox(height: 15),
                  _buildSignInWFG(),
                  const SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 75),
                    child: RichText(
                      text: TextSpan(
                        text: 'Already a member?',
                        children: [
                          TextSpan(
                              text: ' Logn In ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.transparent,
                              ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => LoginScreen()))))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
