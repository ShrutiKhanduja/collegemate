import 'package:collegemate/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

Widget myDetailsContainer1(String restaurantName) {
  
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
          child: MyText(
            text: restaurantName,
            size: 24.0,
            fontColor: Color(0xff6200ee),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(height: 5.0),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: MyText(
                  text: "4.1",
                  fontColor: Colors.black,
                  size: 16,
                ),
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 12.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 12.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 12.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 12.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStarHalf,
                color: Colors.amber,
                size: 12.0,
              ),
            ),
            Container(
              child: MyText(
                text: "(946)",
                fontColor: Colors.black54,
                size: 18.0,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 5.0),
      Container(
        child: MyText(
          text: "American \u00B7 \u0024\u0024 \u00B7 1.6 mi",
          fontColor: Colors.black54,
          size: 18.0,
        ),
      ),
      SizedBox(height: 5.0),
      Container(
        child: MyText(
          text: " Opens \u00B7 Closed 17:00 Thu",
          fontColor: Colors.black54,
          size: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      SizedBox(
        height: 40,
        width: 180,
        child: ElevatedButton(
          onPressed: () {
            print('object');
          },
          child: MyText(
            text: 'Book'.toUpperCase(),
            size: 20,
            fontColor: Colors.white,
          ),
        ),
      ),
    ],
  );
}
