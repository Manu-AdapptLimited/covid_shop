import 'package:covid_shop/screens/BottomSheet/TabBars.dart';
import 'package:covid_shop/screens/CategorySelector.dart';
import 'package:covid_shop/screens/DiscoverPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Model/Products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Products()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Covid_Shop',
        theme: ThemeData(
          primaryColor: Colors.white,
          // visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: DiscoverPage(),
      ),
    );
  }
}
