import 'package:flutter/material.dart';

class ReusableCards extends StatelessWidget {
  ReusableCards({this.text, this.icons});

  final String text;
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purple.shade200,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.purple.shade900,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
          Icon(
            icons,
            size: 50,
            color: Colors.purple.shade900,
          )
        ],
      ),
    );
  }
}
