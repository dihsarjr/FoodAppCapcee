import 'package:flutter/material.dart';

class ListImage extends StatelessWidget {
  String image;
  ListImage({this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Expanded(
          child: Container(
        width: 300,
        color: Colors.white,
        child: Image.network(
          image,
          fit: BoxFit.cover,
        ),
      )),
    );
  }
}
