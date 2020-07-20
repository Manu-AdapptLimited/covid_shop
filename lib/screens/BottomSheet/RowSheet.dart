import 'package:flutter/material.dart';

class RowSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            '     Clear All     ',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          shape: Border.all(
            color: Colors.grey[400],
            width: 1.5,
            style: BorderStyle.solid,
          ),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            '  Apply Filters  ',
            style: TextStyle(
              color: Colors.white60,
            ),
          ),
          color: Colors.black,
          shape: Border.all(
            color: Colors.grey[400],
            width: 1.5,
            style: BorderStyle.solid,
          ),
        )
      ],
    );
  }
}
