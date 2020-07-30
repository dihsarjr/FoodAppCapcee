import 'package:flutter/material.dart';

import 'model/sugessted_model.dart';
import 'widget/suggested_grid_item.dart';

class Wishlist extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              onPressed: () {})
        ],
        elevation: 0,
        title: Text(
          'Whishlist',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  // physics: ClampingScrollPhysics(),
                  // shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, right: 30, left: 30),
            child: Container(
              color: Colors.transparent,
              height: 65,
              child: Container(
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
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              child: Center(
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: <Widget>[
                                    Container(
                                      padding:
                                          EdgeInsets.only(right: 20, top: 8),
                                      child: FittedBox(
                                        child: Text('Cart',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18)),
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child: FittedBox(
                                          child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child: Text(
                                            '2',
                                            style: TextStyle(
                                                fontSize: 5,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        color: Colors.white,
                        width: 2,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Center(
                              child: FittedBox(
                                child: Text('Pay \$225',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
