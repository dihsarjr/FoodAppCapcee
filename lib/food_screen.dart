import 'package:flutter/material.dart';

import 'flowers.dart';
import 'model/list_image.dart';
import 'model/sugessted_model.dart';
import 'shop_details.dart';
import 'widget/list_images.dart';
import 'widget/navigationBar.dart';
import 'widget/shop_list.dart';

class FoodScreen extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Food',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
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
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                color: Colors.white,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShopDetails(),
                            ));
                      },
                      child: ShopItem(
                        image: _shop[index].image,
                        title: _shop[index].title,
                      ),
                    );
                  },
                  itemCount: _shop.length,
                ),
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: SizedBox(child: NavigationBar()),
    );
  }
}
