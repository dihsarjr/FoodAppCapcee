import 'package:flutter/material.dart';

class OfferListImage extends StatelessWidget {
  String image;
  OfferListImage({this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Expanded(
          child: Container(
        width: 100,
        color: Colors.white,
        child: Image.network(
          image,
          fit: BoxFit.cover,
        ),
      )),
    );
  }
}
