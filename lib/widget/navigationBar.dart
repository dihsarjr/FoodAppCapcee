// import 'package:flutter/material.dart';

// import '../whishlist.dart';

// class NavigationBar extends StatefulWidget {
//   @override
//   _NavigationBarState createState() => _NavigationBarState();
// }

// class _NavigationBarState extends State<NavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: Colors.white,
//       items: [
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.home,
//             color: Colors.black,
//           ),
//           title: Text('Home'),
//         ),
//         BottomNavigationBarItem(
//           icon: GestureDetector(
//             onTap: () {},
//             child: Icon(
//               Icons.format_align_justify,
//               color: Colors.black,
//             ),
//           ),
//           title: Text('shopping'),
//         ),
//         BottomNavigationBarItem(
//           icon: GestureDetector(
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Wishlist(),
//                   ));
//             },
//             child: Icon(
//               Icons.favorite_border,
//               color: Colors.black,
//             ),
//           ),
//           title: Text('favorite'),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.person_outline,
//             color: Colors.black,
//           ),
//           title: Text('person'),
//         ),
//       ],
//     );
//   }
// }
