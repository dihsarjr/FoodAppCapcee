import 'package:flutter/material.dart';

class SuggestedItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: Container(
                      child: Image.network(
                          'http://www.pngpix.com/wp-content/uploads/2016/08/PNGPIX-COM-Pizza-PNG-Transparent-Image.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, bottom: 5, top: 5),
                  child: FittedBox(
                    child: Text(
                      'Cheesy Delux Burger',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                      child: FittedBox(
                        child: Text(
                          'Cheesy Delux Burger',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: Colors.black54),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 15, bottom: 5, top: 5),
                      child: FittedBox(
                        child: Text(
                          '\$100',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite_border,
                        size: 12,
                        color: Colors.black54,
                      ),
                      Text(
                        '4.0',
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 1,
                          height: 10,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        '15 Min',
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Icon(
          Icons.add_circle,
          size: 30,
          color: Colors.amber,
        ),
      ],
    );
  }
}