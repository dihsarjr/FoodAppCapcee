import 'package:flutter/material.dart';

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
          Container(
              height: MediaQuery.of(context).size.height * 0.23,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (contex, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Expanded(
                        child: Container(
                      width: 300,
                      height: 500,
                      color: Colors.amber,
                    )),
                  );
                },
                itemCount: 5,
              )),
        ],
      ),
    );
  }
}
