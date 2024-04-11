import 'package:flutter/material.dart';
import 'package:tp3/pages/addional_page.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 64.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "$temp",
          style: TextStyle(fontSize: 35.0, color: Colors.cyan),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "$location",
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    ),
  );
}
