import 'package:flutter/material.dart';
import 'categoriescard.dart';
import 'doctors.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
            'Specialization'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(child: ReusableCards(
                  text: 'General Physician',
                ),
                ),
                Expanded(child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Doctors()));
                  },
                  child: ReusableCards(
                    text: 'Dentist',
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
                  text: 'ENT Specialist',
                ),
                ),
                Expanded(child: ReusableCards(
                  text: 'Psychologist & Psychiatrist',
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
                  text: 'Neurologist',
                ),
                ),
                Expanded(child: ReusableCards(
                  text: 'Cardiologist',
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
                  text: 'Orthopediciane(Bone & Joins)',
                ),
                ),
                Expanded(child: ReusableCards(
                  text: 'View More',
                  icons: Icons.arrow_forward,
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


