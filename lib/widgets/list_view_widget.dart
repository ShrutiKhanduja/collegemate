import 'package:collegemate/models/dummy_model.dart';

import 'package:flutter/material.dart';

import 'cardwidget.dart';
import 'package:collegemate/responsive/size_config.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            // height: 180,
            height: SizeConfig.deviceHeight * 0.24,
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
              },
            ),
          ),
        ],
      ),
    );
  }
}
