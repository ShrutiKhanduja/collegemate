import 'package:collegemate/responsive/size_config.dart';
import 'package:collegemate/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../models/food_dummy_data.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20, left: 20, top: 20),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(width: 0.8),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(width: 1, color: Colors.red),
              ),
              hintText: 'Search Food Items',
              prefixIcon: Icon(Icons.search, size: 30),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {},
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: fooddata.length,
              itemBuilder: (context, index) {
                final data = fooddata[index];
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          MyText(
                            text: data.name,
                            size: 30.0,
                            fontColor: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                          MyText(
                            text: data.description,
                            size: 24.0,
                            fontColor: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.yellow)),
                            child: Row(
                              children: [
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
                                SizedBox(width: SizeConfig.deviceWidth * 0.030),
                                Text(data.rating),
                              ],
                            ),
                          ),
                          MyText(
                            text: '\₹ ' + data.price,
                            fontColor: Colors.red,
                            size: 30.0,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: SizeConfig.deviceWidth * 0.24,
                            height: SizeConfig.deviceWidth * 0.25,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(8.0),
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(data.image),
                              ),
                              // Image(
                              //   fit: BoxFit.fill,
                              //   image: NetworkImage(data.image),
                              // ),
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.deviceHeight * 0.01,
                          ),
                          Container(
                            height: 24,
                            width: 90,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: MyText(
                                text: 'ADD +'.toUpperCase(),
                                fontColor: Colors.red,
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
