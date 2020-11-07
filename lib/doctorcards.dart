import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableCards extends StatelessWidget {
  ReusableCards({this.text, this.icons, this.icon});

  final String text;
  final IconData icons;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purple.shade200,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(
              icons,
              color: Colors.purple.shade900,
            ),
          ),
          Text(text,
            textAlign: TextAlign.center,
            maxLines: 3,
            style: TextStyle(
              color: Colors.purple.shade900,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              icon,
              color: Colors.purple.shade900,
            ),
          ),
        ],
      ),
    );
  }
}
