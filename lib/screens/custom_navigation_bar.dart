import 'package:collegemate/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  PersistentTabController? _controller;
  bool? _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  List<Widget> _buildScreens() {
    return [
      AppHomeScreen(),
      AppHomeScreen(),
      AppHomeScreen(),
      AppHomeScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItem() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.cleaning_services),
        title: "Services",
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.star),
        title: "Discover",
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.car_rental),
        title: "My Vehicles",
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        screens: _buildScreens(),
        items: _navBarsItem(),
        controller: _controller,
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        hideNavigationBarWhenKeyboardShows: true,
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }
}
