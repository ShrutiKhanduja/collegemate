import 'package:collegemate/screens/map_screeen.dart';
import 'package:flutter/material.dart';

import 'list_view_widget.dart';

class AppHomeScreen extends StatelessWidget {
  const AppHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage('assets/images/amazon.jpg'),
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
                  color: Colors.black,
                ))
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
              Text(
                'Container name',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/amazon.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Container name',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MapScreen();
                  }));
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
        ));
  }
}
