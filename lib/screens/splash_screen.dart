import 'package:collegemate/screens/custom_navigation_bar.dart';
import 'package:collegemate/screens/homescreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1600));
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => CustomBottomNavigationBar()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage('assets/images/splash.jpeg'),
                //     fit: BoxFit.fill,
                //   ),
                child: Image.asset(
                  'assets/images/splash.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              // Container(
              //   // child: Image.asset('assets/images/splash.jpeg'),
              //   child: Text(
              //     'Splash Screen',
              //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
