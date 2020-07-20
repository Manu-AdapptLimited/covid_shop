import 'package:flutter/material.dart';

class ItemTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300],
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.5),
                // color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        child: Text('Dining Tables'),
                      ),
                    ),
                    Icon(
                      Icons.close,
                      size: 17.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300],
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.5),
                // color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        child: Text('Bedroom'),
                      ),
                    ),
                    Icon(
                      Icons.close,
                      size: 17.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
