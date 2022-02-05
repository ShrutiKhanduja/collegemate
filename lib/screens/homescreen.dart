import 'package:collegemate/responsive/size_config.dart';
import 'package:collegemate/screens/custom_navigation_bar.dart';
import 'package:collegemate/screens/map_screeen.dart';
import 'package:collegemate/widgets/list_view_widget.dart';
import 'package:collegemate/widgets/second_list_view_widget.dart';
import 'package:collegemate/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AppHomeScreen extends StatelessWidget {
  const AppHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 2,
              backgroundImage: AssetImage('assets/images/amazon.jpg'),
            ),
          ),
          title: MyText(
            text: 'WELCOME TO COLLEGE MATE',
            size: 26,
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
                height: SizeConfig.deviceHeight * 0.019,
              ),
              MyText(
                text: 'Container Text',
                size: 24,
              ),
              SizedBox(
                height: SizeConfig.deviceHeight * 0.013,
              ),
              GestureDetector(
                onTap: () {},
                child: SecondListViewWidget(),
              ),
              SizedBox(
                height: SizeConfig.deviceHeight * 0.019,
              ),
              MyText(
                text: 'Container Text',
                size: 24,
              ),
              SizedBox(
                height: SizeConfig.deviceHeight * 0.013,
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
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    // fix height and width
                    Container(
                      height: SizeConfig.deviceHeight * 0.20,
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
                    Padding(
                      padding: const EdgeInsets.only(right: 15, bottom: 8),
                      child: FlatButton(
                        color: Colors.blue,
                        onPressed: () {},
                        child: MyText(
                          text: 'Book Now'.toUpperCase(),
                          fontColor: Colors.white,
                        ),
                      ),
                    ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
