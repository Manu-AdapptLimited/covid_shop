import 'package:covid_shop/Widget/AllProduct.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'CategorySelector.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(FontAwesomeIcons.bars,color: Colors.black45), onPressed: () {
          
        }),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('DISCOVER',
                style: TextStyle(
                    letterSpacing: 1.5, fontSize: 18.0, color: Colors.black54)),
          ],
        ),
        elevation: 2.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.shoppingCart, color: Colors.black45),
              onPressed: () {}),
         
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CategorySelector(),
            Container(child: AllProduct())
          ],
        ),
      ),
    );
  }
}
