import 'package:flutter/material.dart';

class ScreenSize extends StatelessWidget {
  final findScreenSize;

  const ScreenSize({super.key, required this.findScreenSize});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    final double screenHeight = screenSize.size.height;
    final double screenWidth = screenSize.size.width;

    return findScreenSize();
  }
}
