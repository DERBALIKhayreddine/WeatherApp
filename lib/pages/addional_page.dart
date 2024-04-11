import 'package:flutter/material.dart';

TextStyle titleFont =
    const TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0);
TextStyle infoFont = const TextStyle(
    fontWeight: FontWeight.w600, fontSize: 18.0, color: Colors.black);
Widget addional(
    String wind, String humidity, String pressure, String feels_like) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(
          color: Colors.cyan,
        )),
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wind", // Corrected spelling of "Wind"
                  style: infoFont, // Corrected variable name to titleFont
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Pressure", // Corrected spelling of "Pressure"
                  style: infoFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$wind", // Corrected spelling of "Wind"
                  style: titleFont, // Corrected variable name to titleFont
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "$pressure", // Corrected spelling of "Pressure"
                  style: titleFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "humidity", // Corrected spelling of "Wind"
                  style: infoFont, // Corrected variable name to titleFont
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "feels like", // Corrected spelling of "Pressure"
                  style: infoFont,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$humidity", // Corrected spelling of "Wind"
                  style: titleFont, // Corrected variable name to titleFont
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  "$feels_like", // Corrected spelling of "Pressure"
                  style: titleFont,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
