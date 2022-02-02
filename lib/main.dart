import 'package:collegemate/locationtracking.dart';
import 'package:collegemate/screens/homescreen.dart';
import 'package:flutter/material.dart';

import 'screens/map_screeen.dart';

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
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: AppHomeScreen(),
    );
  }
}
