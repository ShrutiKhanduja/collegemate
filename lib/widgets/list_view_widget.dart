import 'package:collegemate/models/dummy_model.dart';

import 'package:flutter/material.dart';

import 'cardwidget.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

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
              itemCount: dummyData.length,
              itemBuilder: (context, index) {
                final data = dummyData[index];
                return GestureDetector(
                  onTap: () {
                    print('list view widget');
                  },
                  child: CardWidget(
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