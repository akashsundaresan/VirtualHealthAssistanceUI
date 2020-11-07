import 'package:flutter/material.dart';
import 'pharmacymap.dart';

class Medicines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
            'Medicines'
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage("assets/images/medib.jpg"),
      fit: BoxFit.fill,
      ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: FlatButton(
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                    },
                    decoration: InputDecoration(
                      hintText: 'Search Pharmacy on your location',
                      // contentPadding:
                      // EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.blueAccent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.blueAccent, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 300),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MapScreen()));
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 100.0),
                  child: Text(
                    'Get Results',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                        backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


