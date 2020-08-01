import 'package:flutter/material.dart';

import 'food_screen.dart';
import 'main.dart';
import 'medicine.dart';
import 'whishlist.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  //  List
  final List<Widget> _pages = [
    MyHomePage(),
    FoodScreen(),
    Wishlist(),
    Medicine(),
  ];
//  currentIndex
  int selectedPageIndex = 0;

//  onTap function
  void _selectPages(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPages,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.yellow,
        currentIndex: selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('HOME'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_align_justify),
            title: Text('List'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('Whishlist'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Account'),
          ),
        ],
      ),
    );
  }
}
