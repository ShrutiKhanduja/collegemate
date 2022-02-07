import 'package:collegemate/screens/homescreen.dart';
import 'package:collegemate/screens/map_screeen.dart';
import 'package:collegemate/screens/splash_screen.dart';
import 'package:collegemate/utils/custom_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // is not restarted.
        primarySwatch: primaryThemeColor,
      ),
      home: SplashScreen(),
      //home: MapScreen(),
    );
  }
}
