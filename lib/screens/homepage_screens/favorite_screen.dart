// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

_titleText() {
  return const Text(
    "Favorite List",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 32,
    ),
  );
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  var sayac = 0;

  @override
  Widget build(BuildContext context) {
    //
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: PreferredSize(
        preferredSize: screenSize / 10,
        child: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: _titleText(),
          actions: [
            IconButton(
              onPressed: () => print("Notifications Clicked"),
              color: Colors.black,
              icon: Icon(Icons.notifications),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        padding: EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 25.0,
        ),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white38,
            margin: EdgeInsets.only(top: 20, left: 5, bottom: 5),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => print("Go To Details! ! Clicked"),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    height: 150.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/onboard.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "Regular Fit Slogan",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 75),
                              child: Icon(Icons.favorite),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Size M",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Text(
                                "PKR 1,190",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
