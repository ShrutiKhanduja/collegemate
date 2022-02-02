import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return Container(
      height: 200,
      child: Card(
        elevation: 6,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Image.asset(
              image,
              width: 122,
              height: 200,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, bottom: 15),
              alignment: Alignment.bottomLeft,
              width: 122,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(0.05),
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.7),
                ], end: Alignment.bottomCenter, begin: Alignment.topCenter),
              ),
              child: Text(
                name,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
