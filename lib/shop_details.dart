import 'package:flutter/material.dart';

import 'model/sugessted_model.dart';
import 'widget/suggested_grid_item.dart';

class ShopDetails extends StatefulWidget {
  @override
  _ShopDetailsState createState() => _ShopDetailsState();
}

class _ShopDetailsState extends State<ShopDetails> {
  List<Suggested> _images = [
    Suggested(
        brand: 'Subway. YSK',
        price: '117',
        title: 'Cheesy Delux Burger',
        image:
            'https://purepng.com/public/uploads/medium/purepng.com-burgersandwhichfoodbreadcaviarburgerdelicious-21526117612ir9gw.png'),
    Suggested(
        brand: 'Subway. YSK',
        price: '224',
        title: 'Delight Veg Pizza',
        image:
            'http://www.pngpix.com/wp-content/uploads/2016/08/PNGPIX-COM-Pizza-PNG-Transparent-Image.png'),
    Suggested(
        brand: 'Starbucks. YSK',
        price: '99',
        title: 'Choco Latte',
        image:
            'https://www.starbucks.co.th/media/PeppermintMocha_tcm78-25963_w1024_n.png'),
    Suggested(
        brand: 'Flura. YSK',
        price: '79',
        title: 'White & Red Rose',
        image:
            'https://i.pinimg.com/originals/0b/6a/53/0b6a5364c1831a2ceb273110c6a11c35.png'),
  ];

  bool icons = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            alignment: Alignment.topCenter,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1559767944-3e857e34b2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
            fit: BoxFit.contain),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 170,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 30, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          'BETH and ROSE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          'FLOWER SHOP',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          'YSK THD',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, top: 5, bottom: 5),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  '4.2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  'Rating',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 25, top: 5, bottom: 5),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  '11 Min',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  '2.3 Km',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Text(
                        '40% OFF up to 200 on orders above 300 with Coupon',
                        style: TextStyle(color: Colors.green),
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 12,
                                    bottom: 12,
                                  ),
                                  child: FittedBox(
                                    child: Text(
                                      'Suggested',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                    onTap: () {},
                                    child: FittedBox(
                                      child: Text(
                                        'View More >',
                                        style: TextStyle(color: Colors.black38),
                                      ),
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GridView.builder(
                                physics: ClampingScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: (1 / 1.1),
                                ),
                                itemBuilder: (context, index) {
                                  return SuggestedItem(
                                    brand: _images[index].brand,
                                    image: _images[index].image,
                                    price: _images[index].price,
                                    title: _images[index].title,
                                  );
                                },
                                itemCount: _images.length,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 30, bottom: 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                            bottom: 12,
                          ),
                          child: FittedBox(
                            child: Text(
                              'Suggested',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ),
                        IconButton(
                            icon: Icon(icons == false
                                ? Icons.expand_more
                                : Icons.expand_less),
                            onPressed: () {
                              setState(() {
                                icons = !icons;
                              });
                            })
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
