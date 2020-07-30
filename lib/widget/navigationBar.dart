import 'package:flutter/material.dart';

import '../whishlist.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Wishlist(),
                  ));
            },
            child: Icon(
              Icons.format_align_justify,
              color: Colors.black,
            ),
          ),
          title: Text('shopping'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          title: Text('favorite'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline,
            color: Colors.black,
          ),
          title: Text('person'),
        ),
      ],
    );
  }
}
