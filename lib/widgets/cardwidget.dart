import 'package:collegemate/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:collegemate/responsive/size_config.dart';

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
    SizeConfig().init(context);
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
            //width: SizeConfig.deviceWidth * 0.333,
            width: MediaQuery.of(context).size.width * 0.333,
            //width: 120,
            //height: SizeConfig.deviceHeight * 0.43,
            height: MediaQuery.of(context).size.height * 0.43,
            // height: 200,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.only(left: 10, bottom: 15),
            alignment: Alignment.bottomLeft,
            //width: SizeConfig.deviceWidth * 0.333,
             width: MediaQuery.of(context).size.width * 0.333,
            //width: 120,
           // height: SizeConfig.deviceHeight * 0.43,
             height: MediaQuery.of(context).size.height * 0.43,
            //height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.05),
                Colors.black.withOpacity(0.1),
                Colors.black.withOpacity(0.7),
              ], end: Alignment.bottomCenter, begin: Alignment.topCenter),
            ),
            child: MyText(
              text: name,
              fontColor: Colors.white,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
