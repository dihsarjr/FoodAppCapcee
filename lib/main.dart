import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/food_screen.dart';
import 'package:food_app/model/list_image.dart';
import 'package:food_app/navigation.dart';
import 'package:food_app/widget/offer_list_image.dart';
import 'package:food_app/widget/row_category_item.dart';

import 'flowers.dart';
import 'grocery.dart';
import 'medicine.dart';
import 'model/sugessted_model.dart';
import 'shop_details.dart';
import 'widget/list_images.dart';
import 'widget/shop_list.dart';
import 'widget/suggested_grid_item.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
        title: 'FOOD App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Navigation());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

List<ModelImage> _imageItem = [
  ModelImage(
      'https://images.unsplash.com/photo-1515003197210-e0cd71810b5f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  ModelImage(
      'https://images.unsplash.com/photo-1506354666786-959d6d497f1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  ModelImage(
      'https://images.unsplash.com/photo-1432139555190-58524dae6a55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  ModelImage(
      'https://images.unsplash.com/photo-1496412705862-e0088f16f791?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  ModelImage(
      'https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
];

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
List<Suggested> _shop = [
  Suggested(
      brand: 'American, Healthy food ',
      price: '117',
      title: 'Subway Restaurant',
      image:
          'https://d13csqd2kn0ewr.cloudfront.net/uploads/topic_tag_sponsor/logo/83/subway_logo_content.png'),
  Suggested(
      brand: 'American, Healthy food ',
      price: '117',
      title: 'KFC',
      image:
          'https://i1.wp.com/freepngimages.com/wp-content/uploads/2017/07/KFC-logo.png?fit=895%2C895'),
  Suggested(
      brand: 'American, Healthy food ',
      price: '117',
      title: 'Starbucks',
      image:
          'https://upload.wikimedia.org/wikipedia/sco/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1017px-Starbucks_Corporation_Logo_2011.svg.png'),
  Suggested(
      brand: 'American, Healthy food ',
      price: '117',
      title: 'Big Bazaar',
      image:
          'https://www.iprospect.com/~/media/Local/India/Our%20work/Casestudy/Big%20Bazaar/big-bazaar-logo.png?h=360&la=en&w=360'),
  Suggested(
      brand: 'American, Healthy food ',
      price: '117',
      title: 'Apollo',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Apollo_Tyres_logo.svg/640px-Apollo_Tyres_logo.svg.png'),
  Suggested(
      brand: 'American, Healthy food ',
      price: '117',
      title: 'Subway Restaurant',
      image:
          'https://d13csqd2kn0ewr.cloudfront.net/uploads/topic_tag_sponsor/logo/83/subway_logo_content.png'),
  Suggested(
      brand: 'American, Healthy food ',
      price: '117',
      title: 'KFC',
      image:
          'https://i1.wp.com/freepngimages.com/wp-content/uploads/2017/07/KFC-logo.png?fit=895%2C895'),
  Suggested(
      brand: 'American, Healthy food ',
      price: '117',
      title: 'Starbucks',
      image:
          'https://upload.wikimedia.org/wikipedia/sco/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1017px-Starbucks_Corporation_Logo_2011.svg.png'),
  Suggested(
      brand: 'American, Healthy food ',
      price: '117',
      title: 'Big Bazaar',
      image:
          'https://www.iprospect.com/~/media/Local/India/Our%20work/Casestudy/Big%20Bazaar/big-bazaar-logo.png?h=360&la=en&w=360'),
  Suggested(
      brand: 'American, Healthy food ',
      price: '117',
      title: 'Apollo',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Apollo_Tyres_logo.svg/640px-Apollo_Tyres_logo.svg.png'),
];

bool cartBools = false;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.location_on,
              color: Colors.amber,
            ),
            onPressed: () {}),
        title: Text(
          '117,Skyline..',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                        height: MediaQuery.of(context).size.height * 0.20,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (contex, index) {
                            return ListImage(
                              image: _imageItem[index].imageItem,
                            );
                          },
                          itemCount: _imageItem.length,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 100,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FoodScreen(),
                                    ));
                              },
                              child: CategoryItem(
                                title: 'Food',
                                image:
                                    'https://cdn3.iconfinder.com/data/icons/food-1-11/128/food_1-16-512.png',
                              ),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Medicine(),
                                    ));
                              },
                              child: CategoryItem(
                                title: 'Medicine',
                                image:
                                    'https://cdn1.iconfinder.com/data/icons/line-filled-icons-part-2/64/_Add_Medication-512.png',
                              ),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Flowers(),
                                    ));
                              },
                              child: CategoryItem(
                                title: 'Flowers',
                                image:
                                    'https://cdn4.iconfinder.com/data/icons/Gifts/512/bouquet.png',
                              ),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Grocery(),
                                    ));
                              },
                              child: CategoryItem(
                                title: 'Grocery',
                                image:
                                    'https://image.flaticon.com/icons/png/512/135/135763.png',
                              ),
                            )),
                          ],
                        ),
                      ),
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
                                    top: 8, bottom: 8, right: 18, left: 18),
                                child: FittedBox(
                                  child: Text(
                                    'Suggested',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              FlatButton(
                                  onPressed: () {},
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
                                return Stack(
                                  alignment: Alignment.centerRight,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black12),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(
                                              child: Center(
                                                child: Container(
                                                  padding: EdgeInsets.all(8),
                                                  child: Image.network(
                                                      _images[index].image),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 5,
                                                  top: 5),
                                              child: FittedBox(
                                                child: Text(
                                                  _images[index].title,
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        left: 10,
                                                        right: 10,
                                                      ),
                                                      child: FittedBox(
                                                        child: Text(
                                                          _images[index].brand,
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 10,
                                                              color: Colors
                                                                  .black54),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10,
                                                              right: 10,
                                                              bottom: 5),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Icon(
                                                            Icons
                                                                .favorite_border,
                                                            size: 10,
                                                            color:
                                                                Colors.black54,
                                                          ),
                                                          FittedBox(
                                                            child: Text(
                                                              '4.5',
                                                              style: TextStyle(
                                                                  fontSize: 10,
                                                                  color: Colors
                                                                      .black54),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              color: Colors
                                                                  .black54,
                                                            ),
                                                          ),
                                                          FittedBox(
                                                            child: Text(
                                                              '15 Min',
                                                              style: TextStyle(
                                                                  fontSize: 10,
                                                                  color: Colors
                                                                      .black54),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 15,
                                                            bottom: 10),
                                                    child: FittedBox(
                                                      child: Text(
                                                        '\$${_images[index].price}',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
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
                                          cartBools = true;
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
                              },
                              itemCount: _images.length,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 5,
                      ),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8, bottom: 8, right: 18, left: 18),
                                    child: FittedBox(
                                      child: Text(
                                        'Try out exciting offers',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                FlatButton(
                                    onPressed: () {},
                                    child: FittedBox(
                                      child: Text(
                                        'View More  >',
                                        style: TextStyle(color: Colors.black38),
                                      ),
                                    )),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                  height: 100,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (contex, index) {
                                      return OfferListImage(
                                        image: _imageItem[index].imageItem,
                                      );
                                    },
                                    itemCount: _imageItem.length,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        color: Colors.white,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ShopItem(
                              image: _shop[index].image,
                              title: _shop[index].title,
                            );
                          },
                          itemCount: _shop.length,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          cartBools == false
              ? Container()
              : Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 8, right: 30, left: 30),
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
                                            padding: EdgeInsets.only(
                                                right: 20, top: 8),
                                            child: FittedBox(
                                              child: Text('Cart',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18)),
                                            ),
                                          ),
                                          Container(
                                            height: 20,
                                            width: 20,
                                            child: FittedBox(
                                                child: Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(1.0),
                                                child: Text(
                                                  '2',
                                                  style: TextStyle(
                                                      fontSize: 5,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            )),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(50),
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
