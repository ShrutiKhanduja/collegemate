import 'package:collegemate/responsive/size_config.dart';
import 'package:collegemate/screens/homescreen.dart';
import 'package:collegemate/screens/login.dart';
import 'package:collegemate/screens/sign_up.dart';
import 'package:collegemate/utils/custom_color.dart';
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
      LoginScreen(),
      SignUpScreen(),
      AppHomeScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItem() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        activeColorPrimary: activeColor,
        inactiveColorPrimary: inActiveColor,
        title: 'Home',
        textStyle: GoogleFonts.dongle(
          color: secondaryColor,
          fontSize: SizeConfig.deviceHeight * 0.02,
        ),
      ),
      // show login Screen
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.local_library),
        activeColorPrimary: activeColor,
        inactiveColorPrimary: inActiveColor,
        title: 'My Courses',
        textStyle: GoogleFonts.dongle(
          color: secondaryColor,
          fontSize: SizeConfig.deviceHeight * 0.02,
        ),
      ),
      //show signup screen
      PersistentBottomNavBarItem(
        icon: Icon(Icons.wallet_travel),
        activeColorPrimary: activeColor,
        inactiveColorPrimary: inActiveColor,
        title: 'Careers',
        textStyle: GoogleFonts.dongle(
          color: secondaryColor,
          fontSize: SizeConfig.deviceHeight * 0.02,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.account_circle),
        activeColorPrimary: activeColor,
        inactiveColorPrimary: inActiveColor,
        title: 'Account',
        textStyle: GoogleFonts.dongle(
          color: secondaryColor,
          fontSize: SizeConfig.deviceHeight * 0.02,
        ),
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
        backgroundColor: primaryColor,
        hideNavigationBarWhenKeyboardShows: false,
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }
}
