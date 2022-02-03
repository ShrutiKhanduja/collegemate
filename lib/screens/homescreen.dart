import 'package:collegemate/screens/custom_navigation_bar.dart';
import 'package:collegemate/screens/map_screeen.dart';
import 'package:collegemate/widgets/second_list_view_widget.dart';
import 'package:flutter/material.dart';

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
            padding: EdgeInsets.all(8.0),
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
            // child: CircleAvatar(
            //   radius: 2,
            //   backgroundImage: AssetImage('assets/images/amazon.jpg'),
            // ),
          ),
          title: Text(
            'TITLE',
            style: TextStyle(fontSize: 16, color: Colors.black),
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
                height: 15,
              ),
              // for only testing purpose
              GestureDetector(
                  onTap: () {
                    print('tap');
                  },
                  child: SecondListViewWidget()),
              SizedBox(
                height: 15,
              ),
              Text(
                'Find Cafeteria',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10,
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
                child: Container(
                  height: 180,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/map.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





















//  Text(
//                 'Container name',
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 height: 150,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: Image.asset(
//                     'assets/images/amazon.jpg',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),