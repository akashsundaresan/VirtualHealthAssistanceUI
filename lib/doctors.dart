import 'package:flutter/material.dart';
import 'doctorcards.dart';

class Doctors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
            'Dentist'
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
                Expanded(child: ReusableCards(
                  text: '''Dr.Karthikeyan, Dentist,
11 Years of Experience,
Nehru Nagar, Coimbatore.''',
                  icons: Icons.local_hospital,
                  icon: Icons.call,
                ),
                ),
          Expanded(child: ReusableCards(
            text: '''Dr.Abishek John, Dentist,
8 Years of Experience,
Saibaba Colony, Coimbatore.''',
            icons: Icons.local_hospital,
            icon: Icons.call,
          ),
          ),
          Expanded(child: ReusableCards(
            text: '''Dr.C R Rajkumar, Dentist
8 Years of Experience,
Ukkadam, Coimbatore.''',
            icons: Icons.local_hospital,
            icon: Icons.call,
          ),
          ),
          Expanded(child: ReusableCards(
            text: '''Dr.Sree Kumar, Dentist,
11 Years of Experience,
R.S.Puram, Coimbatore.''',
            icons: Icons.local_hospital,
            icon: Icons.call,
          ),
          ),
          Expanded(child: ReusableCards(
            text: 'View More Doctors',
            icon: Icons.more,
          ),
          ),
        ],
      ),
    );
  }
}
