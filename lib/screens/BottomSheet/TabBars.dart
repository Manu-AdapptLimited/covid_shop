import 'package:flutter/material.dart';

class TabBars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          bottom: TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'COLOUR',
                    style: TextStyle(fontSize: 10.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'CATEGORY',
                    style: TextStyle(fontSize: 10.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'STYLE',
                    style: TextStyle(fontSize: 10.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'PRICE',
                    style: TextStyle(fontSize: 10.0),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
