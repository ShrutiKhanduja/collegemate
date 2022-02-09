import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'food_list_widget.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // length of tabs
      initialIndex: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const <Widget>[
          TabBar(
            indicatorColor: Colors.red,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.black54,
            tabs: [
              Tab(text: 'Recommended'),
              Tab(text: 'Popular'),
              Tab(text: 'BestSeller'),
            ],
          ),
          Expanded(
            child: TabBarView(children: <Widget>[
              Food(),
              Food(),
              Food(),
            ]),
          )
        ],
      ),
    );
  }
}
