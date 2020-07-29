import 'package:flutter/material.dart';

class Grocery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Grocery',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text('Grocery'),
      ),
    );
  }
}
