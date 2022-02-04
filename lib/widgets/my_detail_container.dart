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
          child: Text(
            restaurantName,
            style: GoogleFonts.dongle(
                color: Color(0xff6200ee),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      SizedBox(height: 5.0),
      Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              child: Text(
            "4.1",
            style: GoogleFonts.dongle(
              color: Colors.black54,
              fontSize: 18.0,
            ),
          )),
          Container(
            child: Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.amber,
              size: 15.0,
            ),
          ),
          Container(
            child: Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.amber,
              size: 15.0,
            ),
          ),
          Container(
            child: Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.amber,
              size: 15.0,
            ),
          ),
          Container(
            child: Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.amber,
              size: 15.0,
            ),
          ),
          Container(
            child: Icon(
              FontAwesomeIcons.solidStarHalf,
              color: Colors.amber,
              size: 15.0,
            ),
          ),
          Container(
              child: Text(
            "(946)",
            style: GoogleFonts.dongle(
              color: Colors.black54,
              fontSize: 18.0,
            ),
          )),
        ],
      )),
      SizedBox(height: 5.0),
      Container(
          child: Text(
        "American \u00B7 \u0024\u0024 \u00B7 1.6 mi",
        style: GoogleFonts.dongle(
          color: Colors.black54,
          fontSize: 18.0,
        ),
      )),
      SizedBox(height: 5.0),
      Container(
          child: Text(
        "Closed \u00B7 Opens 17:00 Thu",
        style: GoogleFonts.dongle(
            color: Colors.black54, fontSize: 18.0, fontWeight: FontWeight.bold),
      )),
      SizedBox(height: 10),
      SizedBox(
        height: 40,
        width: 200,
        child: ElevatedButton(
          onPressed: () {
            print('object');
          },
          child: Text(
            'click me'.toUpperCase(),
            style: GoogleFonts.dongle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    ],
  );
}
