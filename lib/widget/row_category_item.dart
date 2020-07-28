import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Image.network(
                      'https://cdn3.iconfinder.com/data/icons/food-1-11/128/food_1-16-512.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text('Food'),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.8),
              offset: Offset(-6.0, -6.0),
              blurRadius: 16.0,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: Offset(6.0, 6.0),
              blurRadius: 16.0,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
