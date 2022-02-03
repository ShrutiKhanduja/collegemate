import 'package:collegemate/models/newdummy_model.dart';
import 'package:collegemate/widgets/secondcardwidget.dart';
import 'package:flutter/material.dart';

class SecondListViewWidget extends StatelessWidget {
  const SecondListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: newDummyData.length,
              itemBuilder: (context, index) {
                final data = newDummyData[index];
                return GestureDetector(
                  onTap: () {
                    print('second list view widget');
                  },
                  child: SecondCardWidget(
                    image: data.image,
                    name: data.name,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
