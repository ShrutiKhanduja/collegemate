import 'package:collegemate/responsive/size_config.dart';
import 'package:collegemate/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    SizeConfig().init(context);
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
        icon: const Icon(Icons.home),
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey[400],
        title: 'Home',
        textStyle: GoogleFonts.dongle(
            color: Colors.black, fontSize: SizeConfig.deviceHeight * 0.02),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.local_library),
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey[400],
        title: 'My Courses',
        textStyle: GoogleFonts.dongle(
            color: Colors.black, fontSize: SizeConfig.deviceHeight * 0.02),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.wallet_travel),
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey[400],
        title: 'Careers',
        textStyle: GoogleFonts.dongle(
            color: Colors.black, fontSize: SizeConfig.deviceHeight * 0.02),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.account_circle),
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey[400],
        title: 'Account',
        textStyle: GoogleFonts.dongle(
            color: Colors.black, fontSize: SizeConfig.deviceHeight * 0.02),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: PersistentTabView(
        context,
        screens: _buildScreens(),
        items: _navBarsItem(),
        controller: _controller,
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        hideNavigationBarWhenKeyboardShows: false,
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }
}
















































// List<PersistentBottomNavBarItem> _navBarsItems() {
//     return [
     
//     ];
//   }