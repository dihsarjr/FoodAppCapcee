import 'package:flutter/material.dart';

class SuggestedItem extends StatefulWidget {
  String image;
  String price;
  String brand;
  String title;
  bool cartBool;

  SuggestedItem(
      {this.brand,
      this.image,
      this.price,
      this.title,
      @required this.cartBool});

  @override
  _SuggestedItemState createState() => _SuggestedItemState();
}

class _SuggestedItemState extends State<SuggestedItem> {
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
                      padding: EdgeInsets.all(8),
                      child: Image.network(widget.image),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, bottom: 5, top: 5),
                  child: FittedBox(
                    child: Text(
                      widget.title,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: FittedBox(
                            child: Text(
                              widget.brand,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: Colors.black54),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 5),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.favorite_border,
                                size: 10,
                                color: Colors.black54,
                              ),
                              FittedBox(
                                child: Text(
                                  '4.0',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black54),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 1,
                                  height: 10,
                                  color: Colors.black54,
                                ),
                              ),
                              FittedBox(
                                child: Text(
                                  '15 Min',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black54),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15, bottom: 10),
                        child: FittedBox(
                          child: Text(
                            '\$${widget.price}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            print('object');
            setState(() {
              widget.cartBool = true;
            });
          },
          child: Icon(
            Icons.add_circle,
            size: 35,
            color: Colors.amber,
          ),
        ),
      ],
    );
  }
}
