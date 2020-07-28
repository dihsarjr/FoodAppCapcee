import 'package:flutter/material.dart';
import 'package:food_app/model/list_image.dart';
import 'package:food_app/widget/row_category_item.dart';

import 'widget/list_images.dart';

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
                          Expanded(child: CategoryItem()),
                          Expanded(child: CategoryItem()),
                          Expanded(child: CategoryItem()),
                          Expanded(child: CategoryItem()),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.amber,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, right: 30, left: 30),
            child: Container(
              color: Colors.transparent,
              height: MediaQuery.of(context).size.height * 0.1,
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
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Text('Cart',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25)),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child: FittedBox(
                                          child: Center(
                                        child: Text(
                                          '2',
                                          // style: TextStyle(fontSize: 5),
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
                                      fontSize: 25)),
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
