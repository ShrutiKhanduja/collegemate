import 'package:collegemate/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../models/cafeteria_dummy_data.dart';
import '../responsive/size_config.dart';
import '../screens/restaurent_detail_page.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      maxChildSize: 0.4,
      minChildSize: 0.3,
      builder: (context, controller) {
        return SingleChildScrollView(
          controller: controller,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            height: SizeConfig.deviceWidth * 0.8,
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: 'Booking for',
                    size: 20,
                    fontColor: Colors.black,
                  ),
                  MyText(
                    text: 'Today, 08:30 -10:30 PM (2 hrs)',
                    fontColor: Colors.black,
                    size: 20,
                  ),
                  SizedBox(width: SizeConfig.deviceWidth * 0.04),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cafeData.length,
                        itemBuilder: (context, index) {
                          final data = cafeData[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return RestaurentDetailPage(
                                  name: data.name,
                                  image: data.image,
                                  rating: data.rating,
                                  timing: data.timing,
                                  distance: data.distance,
                                  address: data.address!,
                                );
                              }));
                            },
                            child: SizedBox(
                              height: SizeConfig.deviceHeight * 0.10,
                              width: SizeConfig.deviceHeight * 0.45,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.network(
                                      data.image,
                                      width: SizeConfig.deviceWidth * 0.30,
                                      height: SizeConfig.deviceHeight * 0.18,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10, left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        MyText(
                                          text: data.name,
                                          size: 24,
                                          fontColor: Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        RatingBarIndicator(
                                          rating: double.parse(data.rating),
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          itemCount: 5,
                                          itemSize: 18.0,
                                          direction: Axis.horizontal,
                                        ),
                                        SizedBox(
                                            height: SizeConfig.deviceHeight *
                                                0.012),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 18,
                                            ),
                                            SizedBox(
                                                width: SizeConfig.deviceWidth *
                                                    0.020),
                                            Text(data.distance),
                                          ],
                                        ),
                                        MyText(
                                          text: data.timing,
                                          fontColor: Colors.black54,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          height: 26,
                                          width: 150,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              print('object');
                                            },
                                            child: MyText(
                                              text: 'Click Me'.toUpperCase(),
                                              size: 16,
                                              fontColor: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
