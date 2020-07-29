import 'package:flutter/material.dart';

class ShopItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
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
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
            height: 100,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 25),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.20,
                    child: Image.network(
                      'https://d13csqd2kn0ewr.cloudfront.net/uploads/topic_tag_sponsor/logo/83/subway_logo_content.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FittedBox(
                          child: Text(
                            'Subway Restaurant',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            'American, Healthy food ',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 13),
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            '40% OFF with Coupon DXSGF60',
                            style: TextStyle(color: Colors.green, fontSize: 13),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            color: Colors.black12,
                            height: 1,
                            width: MediaQuery.of(context).size.width * 0.50,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              FittedBox(
                                child: Text(
                                  '2.3Km',
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 10),
                                ),
                              ),
                              FittedBox(
                                child: Text(
                                  '30 Min',
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 10),
                                ),
                              ),
                              FittedBox(
                                child: Text(
                                  'NON-VEG',
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 10),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          '4.5',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
