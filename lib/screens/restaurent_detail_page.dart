import 'package:collegemate/responsive/size_config.dart';
import 'package:collegemate/widgets/tab_bar_widget.dart';
import 'package:collegemate/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RestaurentDetailPage extends StatefulWidget {
  final String name;
  final String image;
  final String rating;
  final String timing;
  final String distance;
  final String? address;

  RestaurentDetailPage({
    required this.rating,
    required this.timing,
    required this.distance,
    required this.name,
    required this.image,
    this.address,
  });

  @override
  _RestaurentDetailPageState createState() => _RestaurentDetailPageState();
}

class _RestaurentDetailPageState extends State<RestaurentDetailPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: SizeConfig.deviceHeight * 0.22,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: widget.name,
                          fontWeight: FontWeight.w500,
                          size: 34,
                        ),
                        MyText(
                          text: widget.address!,
                          fontWeight: FontWeight.w300,
                          size: 24,
                        ),
                        MyText(
                          text: widget.timing,
                          fontWeight: FontWeight.w300,
                          size: 24,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 22,
                            ),
                            SizedBox(width: SizeConfig.deviceWidth * 0.015),
                            MyText(
                              text: widget.distance,
                              fontColor: Colors.grey,
                              fontWeight: FontWeight.w500,
                              size: 24,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            widget.image,
                            height: SizeConfig.deviceHeight * 0.12,
                            width: SizeConfig.deviceWidth * 0.22,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.deviceHeight * 0.01,
                        ),
                        RatingBarIndicator(
                          rating: 3.5,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 18.0,
                          direction: Axis.horizontal,
                        ),
                        MyText(
                          text: 'Rating - 3.5',
                          size: 24,
                          fontWeight: FontWeight.w300,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
