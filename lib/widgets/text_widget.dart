import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? fontColor;
  // final double? wordSpacing;
  // final double? textScaleFactor;
  // final TextAlign? textAlign;
  // final int? lines;
  final String? fontFamily;

  MyText({
    required this.text,
    this.size,
    this.fontWeight,
    this.fontColor,
    // this.wordSpacing,
    // this.textScaleFactor,
    // this.textAlign,
    // this.lines,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.dongle(
          fontSize: size,
          color: fontColor ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.normal),
    );
  }
}
