// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

_titleText() {
  return const Text(
    "My Cart",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 32,
    ),
  );
}

Widget _bottomNavBar() {
  return GestureDetector(
    child: Container(
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Price",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),
              Text(
                "PKR 1,190",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            label: const Text("Add To Cart"),
            icon: const Icon(Icons.shopping_basket_outlined),
            backgroundColor: Colors.black,
          )
        ],
      ),
    ),
  );
}

class _MyCartScreenState extends State<MyCartScreen> {
  var sayac = 0;

  @override
  Widget build(BuildContext context) {
    //
    final screenSize = MediaQuery.of(context).size;
    double scrollOffSet = 0.0;
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: PreferredSize(
        preferredSize: screenSize / 10,
        child: AppBar(
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
                  onTap: () => print("Image Container Clicked"),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    height: 125.0,
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
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: Row(
                          children: [
                            Text(
                              "Regular Fit Slogan",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.delete),
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
                              Container(
                                width: 25,
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: FloatingActionButton(
                                  heroTag: "btn1$index",
                                  onPressed: () {
                                    setState(() {
                                      sayac = sayac + 1;
                                    });
                                  },
                                  backgroundColor: Colors.blue,
                                  child: Icon(Icons.add),
                                ),
                              ),
                              Text("Adet : $sayac"),
                              Container(
                                width: 25,
                                margin: EdgeInsets.only(left: 20),
                                child: FloatingActionButton(
                                  heroTag: "btn2$index",
                                  onPressed: () {
                                    setState(() {
                                      sayac = sayac - 1;
                                    });
                                  },
                                  backgroundColor: Colors.deepOrangeAccent,
                                  child: Icon(Icons.remove),
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
