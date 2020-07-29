import 'package:flutter/material.dart';
import 'package:food_app/model/list_image.dart';
import 'package:food_app/widget/row_category_item.dart';

import 'model/sugessted_model.dart';
import 'widget/list_images.dart';
import 'widget/suggested_grid_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
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
                        height: MediaQuery.of(context).size.height * 0.12,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: CategoryItem(
                              title: 'Food',
                              image:
                                  'https://cdn3.iconfinder.com/data/icons/food-1-11/128/food_1-16-512.png',
                            )),
                            Expanded(
                                child: CategoryItem(
                              title: 'Medicine',
                              image:
                                  'https://cdn1.iconfinder.com/data/icons/line-filled-icons-part-2/64/_Add_Medication-512.png',
                            )),
                            Expanded(
                                child: CategoryItem(
                              title: 'Flowers',
                              image:
                                  'https://cdn4.iconfinder.com/data/icons/Gifts/512/bouquet.png',
                            )),
                            Expanded(
                                child: CategoryItem(
                              title: 'Grocery',
                              image:
                                  'https://image.flaticon.com/icons/png/512/135/135763.png',
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
                                child: Text(
                                  'Suggested',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'View More >',
                                    style: TextStyle(color: Colors.black38),
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
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, right: 30, left: 30),
            child: Container(
              color: Colors.transparent,
              height: 70,
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
                                      child: Text('Cart',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
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
                              child: Text('Pay \$225',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
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
