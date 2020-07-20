import 'dart:ui';

import 'package:covid_shop/Model/Products.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Products>(context);
    final pdts = product.item;

    return GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: pdts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.75),
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              value: pdts[i],
              child: PdtItem(
                name: pdts[i].name,
                price: pdts[i].price,
                image: pdts[i].img,
              ),
            ));
  }
}

class PdtItem extends StatelessWidget {
  final String name;
  final String image;
  final double price;

  PdtItem({
    this.image,
    this.name,
    this.price,
  });
  @override
  Widget build(BuildContext context) {
    final kDefaultPaddin = 20.0;
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(kDefaultPaddin),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
          child: Image.asset(image, height: 425, width: 425),
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPaddin / 2),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[Text(name), Text('\$$price')],
              ),
          )
      ],
    );
  }
}
