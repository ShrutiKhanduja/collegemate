import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 6,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Image.asset(
            image,
            width: MediaQuery.of(context).size.width * 0.333,
            //width: 120,
            height: MediaQuery.of(context).size.height * 0.43,
            // height: 200,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.only(left: 10, bottom: 15),
            alignment: Alignment.bottomLeft,
            width: MediaQuery.of(context).size.width * 0.333,
            //width: 120,
            height: MediaQuery.of(context).size.height * 0.43,
            //height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.05),
                Colors.black.withOpacity(0.1),
                Colors.black.withOpacity(0.7),
              ], end: Alignment.bottomCenter, begin: Alignment.topCenter),
            ),
            child: Text(
              name,
              style: GoogleFonts.dongle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
