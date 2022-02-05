import 'package:collegemate/screens/map_screeen.dart';
import 'package:collegemate/widgets/second_list_view_widget.dart';
import 'package:collegemate/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/list_view_widget.dart';

class AppHomeScreen extends StatelessWidget {
  const AppHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8),
            child: IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.black,
                size: 35,
              ),
              onPressed: () {
                print('Profile Icon pressed');
              },
            ),
          ),
          title: MyText(
            text: 'WELCOME TO OUR APP',
            size: 18,
            fontColor: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_add,
                color: Colors.grey.shade700,
                size: 30,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10, right: 14, left: 14),
          child: ListView(
            children: [
              ListViewWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.019,
              ),
              MyText(
                text: 'Container Text',
                size: 16,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.013,
                //height: 10,
              ),
              // for only testing purpose
              GestureDetector(
                onTap: () {
                  print('tap');
                },
                child: SecondListViewWidget(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.019,
                //height: 15,
              ),
              MyText(
                text: 'Find Cafeteria',
                size: 16,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.013,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MapScreen();
                      },
                    ),
                  );
                },
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    // fix height and width
                    Container(
                      height: MediaQuery.of(context).size.height * 0.20,
                      //height: 150,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/map.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // TextButton(
                    //   style: TextButton.styleFrom(
                    //     backgroundColor: Colors.blue,
                    //   ),
                    //   onPressed: () {},
                    //   child: MyText(
                    //     text: 'Book Now'.toUpperCase(),
                    //     fontColor: Colors.white,
                    //   ),
                    // ),
                    FlatButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child: MyText(
                        text: 'Book Now'.toUpperCase(),
                        fontColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
