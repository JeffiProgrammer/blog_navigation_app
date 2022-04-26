
import 'package:flutter/material.dart';

Widget getBlogPost({required String imageName,required String title}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image(
          image: AssetImage('images/$imageName'),
        ),
      ),
      SizedBox(height: 10.0),
      Text(
        '$title',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'فروش روی : 12,560',
            style: TextStyle(color: Colors.red, fontSize: 16.0),
          ),
          SizedBox(width: 10.0),
          Icon(
            Icons.price_check,
            size: 25.0,
            color: Colors.red,
          ),
          SizedBox(width: 20.0),
          Text(
            'خرید روی : 12,365',
            style: TextStyle(color: Colors.green, fontSize: 16.0),
          ),
          SizedBox(width: 10.0),
          Icon(
            Icons.sell,
            size: 20.0,
            color: Colors.green,
          ),
        ],
      ),
      Container(
        width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),
      )
    ],
  );
}
