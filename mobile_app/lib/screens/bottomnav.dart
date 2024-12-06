import 'package:flutter/material.dart';
import 'package:mobile_app/screens/Order.dart';
import 'package:mobile_app/screens/homepage.dart';
import 'package:mobile_app/screens/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;

  late MyHomePage HomePage;
  late OrderPage order;
  late Profile profile;
  int currentTabIndex = 0;
  @override
  void initState() {
    HomePage = MyHomePage();
    order = OrderPage();
    profile = Profile();
    pages = [HomePage, order, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Color(0xfff2f2f2),
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),  
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },  
        items: [
        Icon(
          Icons.home_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.person_2_outlined,
          color: Colors.white,
        )
      ]),
      body: pages[currentTabIndex],
    );
  }
}
