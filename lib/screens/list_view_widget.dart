import 'package:collegemate/models/dummy_model.dart';

import 'package:flutter/material.dart';

import 'cardwidget.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   'bestcolleges',
        //   style: TextStyle(fontSize: 16),
        // ),
        // SizedBox(
        //   height: 10,
        // ),
        Container(
            height: 180,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dummyData.length,
                itemBuilder: (context, index) {
                  final data = dummyData[index];
                  return GestureDetector(
                    onTap: () {},
                    child: CardWidget(
                      image: data.image,
                      name: data.name,
                    ),
                  );
                }))
      ],
    );
  }
}
