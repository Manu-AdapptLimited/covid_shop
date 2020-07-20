import 'package:covid_shop/screens/BottomSheet/ColorBox.dart';
import 'package:covid_shop/screens/BottomSheet/FiltersBar.dart';
import 'package:covid_shop/screens/BottomSheet/ItemType.dart';
import 'package:covid_shop/screens/BottomSheet/ItemTypes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'BottomSheet/RowSheet.dart';
import 'BottomSheet/TabBars.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = [
    'All Items',
    'New Arrival',
    'Popular',
    'Filter'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                  
                });

              _modelBottomSheet(context);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                child: Text(
                  categories[index],
                  style: TextStyle(
                      color: index == selectedIndex
                          ? Colors.black
                          : Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
              ),
            );
          }),
    );
  }
}

void _modelBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Padding(
          padding: EdgeInsets.all(9.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 60,
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RowSheet(),
                FilterBar(),
                ColorBox(),
                SizedBox(
                  height: 28.5,
                ),
                Divider(),
                SizedBox(
                  height: 15.0,
                ),
                ItemType(),
                // SizedBox(height: 15.0,),
                // ItemTypes(),
                Container(
                  height: 60.0,
                  child: TabBars(),
                ),
              ],
            ),
          ),
        );
      });
}
