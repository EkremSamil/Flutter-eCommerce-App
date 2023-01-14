import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/screens/details_screen.dart';
import 'package:flutterecommerceapp/screens/home_screen.dart';
import 'package:flutterecommerceapp/screens/onboard_screen.dart';
import 'package:flutterecommerceapp/screens/signup_screen.dart';

import 'screens/mycart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
            color: Colors.white, iconTheme: IconThemeData(color: Colors.black)),
      ),
      home: OnboardScreen(),
    );
  }
}
