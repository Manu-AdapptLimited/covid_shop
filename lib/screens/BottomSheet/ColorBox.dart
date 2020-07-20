import 'package:flutter/material.dart';

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
        direction: Axis.horizontal,
        runSpacing: 10.0,
        children: <Widget>[
          Container(
            child: Wrap(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[400],
                      width: 1.5,
                      style: BorderStyle.solid,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 3.0),
                  // color: Colors.yellow,
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Container(
                          height: 13.0,
                          width: 13.0,
                          color: Colors.yellow,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Container(
                          child: Text('Yellow'),
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
            child: Wrap(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[400],
                      width: 1.5,
                      style: BorderStyle.solid,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 3.0),
                  // color: Colors.yellow,
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Container(
                          height: 13.0,
                          width: 13.0,
                          color: Colors.blue,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Container(
                          child: Text('Blue'),
                        ),
                      ),
                      Icon(
                        Icons.close,
                        size: 17.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]);
  }
}
