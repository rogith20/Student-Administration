import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(37.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Student Profile',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          CircleAvatar(
            radius: 64.0,
            backgroundImage:NetworkImage('https://www.pngarts.com/files/5/User-Avatar-PNG-Transparent-Image.png'),
          ),
          SizedBox(height: 16.0),
          Text(
            'Rogith R',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Email: rogithraja2004@gmail.com\nPhone: 123-456-7890\nAddress: 123 Random St,Chennai',
            style: TextStyle(
              fontSize: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}