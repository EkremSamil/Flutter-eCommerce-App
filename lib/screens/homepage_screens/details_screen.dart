import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

_titleText() {
  return const Text(
    "Details",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 32,
    ),
  );
}

Widget _itemCard() {
  return Card(
    margin: EdgeInsets.only(top: 5, left: 10, right: 5),
    child: Column(
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: () => print("Image Container Clicked"),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                height: 300.0,
                width: 175.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/onboard.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => print("Icon clicked"),
              child: Container(
                width: 50,
                height: 50,
                child: Icon(Icons.favorite_border_outlined),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, top: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Regular Fit Slogan",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, top: 5),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "PKR 1,190",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ],
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

class _DetailScreenState extends State<DetailScreen> {
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
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Center(
          child: Container(
              child: Column(
            children: [
              Image.asset("images/onboard.png"),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Regular fit slogan",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "THE NAME SAYS IT ALL, THE RIGHT SIZE SLIGHTLY SNUGS THE BODY LEAVING ENOUGH ROOM FOR COMFORT IN THE SLEEVES AND WAIST.",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Choose Size",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        ElevatedButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: Text(
                            'S',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: Text(
                            'M',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: Text(
                            'L',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
      bottomNavigationBar: _bottomNavBar(),
    );
  }
}
