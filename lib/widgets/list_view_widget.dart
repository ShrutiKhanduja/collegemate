import 'package:collegemate/models/dummy_model.dart';

import 'package:flutter/material.dart';

import 'cardwidget.dart';
import 'package:collegemate/responsive/size_config.dart';

class ListViewWidget extends StatelessWidget {
  //this listview widget have list view builder to show Cardwidget
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //height:SizeConfig.deviceHeight * 0.238,
            //height: MediaQuery.of(context).size.height * 0.238,
            height: 180,
            // height: 180,
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








































// return SafeArea(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 180,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: dummyData.length,
//               itemBuilder: (context, index) {
//                 final data = dummyData[index];
//                 return GestureDetector(
//                   onTap: () {},
//                   child: CardWidget(
//                     image: data.image,
//                     name: data.name,
//                   ),
//                 );
//               },
//             ),
//           )
//         ],
//       ),
//     );