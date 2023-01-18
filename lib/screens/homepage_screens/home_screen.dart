// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/screens/homepage_screens/details_screen.dart';
import 'package:flutterecommerceapp/screens/mycart_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool isSearch = false;

_tabBar() {
  return TabBar(
    padding: EdgeInsets.only(bottom: 10),
    labelPadding: EdgeInsets.symmetric(horizontal: 25),
    labelColor: Colors.white,
    unselectedLabelColor: Colors.black,
    indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(15), color: Colors.black),
    tabs: [
      Tab(text: "All"),
      Tab(text: "Men"),
      Tab(text: "Women"),
      Tab(text: "Kids")
    ],
    isScrollable: true,
  );
}

_titleText() {
  return const Text(
    "Discover",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 32,
    ),
  );
}

_searchBarTextDecoration() {
  return TextField(
    decoration: InputDecoration(
      hintText: "Ara",
    ),
    onChanged: (searchResult) {
      print("Searching ... : $searchResult");
    },
  );
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //
    final screenSize = MediaQuery.of(context).size;
    double scrollOffSet = 0.0;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: screenSize / 6,
          child: AppBar(
            centerTitle: true,
            title: isSearch ? _searchBarTextDecoration() : _titleText(),
            actions: [
              isSearch
                  ? IconButton(
                      icon: Icon(Icons.cancel),
                      color: Colors.black,
                      onPressed: () {
                        setState(() {
                          isSearch = false;
                        });
                      },
                    )
                  : IconButton(
                      icon: Icon(Icons.search),
                      color: Colors.black,
                      onPressed: () {
                        setState(() {
                          isSearch = true;
                        });
                      },
                    ),
              IconButton(
                onPressed: () => print("Notifications Clicked"),
                color: Colors.black,
                icon: Icon(Icons.notifications),
              ),
            ],
            bottom: _tabBar(),
          ),
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Container(
              height: screenSize.height / 1,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 1,
                  crossAxisSpacing: 15,
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 25.0,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.only(top: 5, left: 10, right: 5),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailScreen())),
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
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
                },
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              label: "Card",
              icon: IconButton(
                  onPressed: () {
                    Duration(seconds: 1);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyCartScreen()));
                  },
                  icon: Icon(Icons.shopping_bag)),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(Icons.settings),
            ),
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
