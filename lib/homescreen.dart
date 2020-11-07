import 'package:flutter/material.dart';
import 'reusablecard.dart';
import 'Screens/Welcome/welcome_screen.dart';
import 'Screens/maps.dart';
import 'categories.dart';
import 'medicines.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
            'Revive.Ly'
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('John Smith',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
              ),
              accountEmail: Text('johnsmith@gmail.com',
              style: TextStyle(
                color: Colors.white
              ),),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Annotation 2020-09-11 012359.jpg'),
                  fit: BoxFit.fill
                ),
              ),
            ),
            ListTile(
              title: Text('My Profile'),
              trailing: Icon(Icons.person),
            ),
            Divider(),
            ListTile(
              title: Text('Search Specialization'),
              trailing: Icon(Icons.list),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('My Health Details'),
              trailing: Icon(Icons.details),
            ),
            Divider(),
            ListTile(
              title: Text('My Lab Results'),
              trailing: Icon(Icons.video_label),
            ),
            Divider(),
            ListTile(
              title: Text('My History'),
              trailing: Icon(Icons.history),
            ),
            Divider(),
            ListTile(
              title: Text('Contact us'),
              trailing: Icon(Icons.call),
            ),
            Divider(),
            ListTile(
              title: Text('Logout'),
              trailing: Icon(Icons.offline_bolt),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
              },
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    hintText: 'Search Hospitals on your location',
                    // contentPadding:
                    // EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.purple, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.purple.shade900, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 50),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MapScreen()));
              },
              child: Text(
                'Get Results',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(child: ReusableCards(
                  text: 'Doctor Consultancy',
                  icons: Icons.local_hospital,
                ),
                ),
                Expanded(child: ReusableCards(
                  text: 'Lab Tests',
                  icons: Icons.report,
                ),
                ),
                Expanded(child: GestureDetector(
                  onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Medicines()));
                  },
                  child: ReusableCards(
                    text: 'Buy Medicines',
                    icons: Icons.shopping_cart,
                  ),
                ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(child: ReusableCards(
                  text: 'Wellness Services',
                  icons: Icons.message,
                ),
                ),
                Expanded(child: ReusableCards(
                  text: 'Health Products',
                  icons: Icons.widgets,
                ),
                ),
                Expanded(child: ReusableCards(
                  text: 'Packages',
                  icons: Icons.attach_money,
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

