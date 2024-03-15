import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:pmt/view/dashboard_screen.dart';
import 'package:pmt/view/home_screen.dart';
import 'package:pmt/view/notifications_screen.dart';
import 'package:pmt/view/profile_screen.dart';

// void main() => runApp(const MaterialApp(home: NavigationBarScreen()));

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  _NavigationBarScreenState createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _page = 1;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final screens = <Widget>[
    const HomeScreen(),
    const DashboardScreen(),
    const NotificationScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final item = <Widget>[
      const Icon(
        Icons.home,
        size: 30,
        color: Colors.white,
      ),
      const Icon(
        Icons.dashboard,
        size: 30,
        color: Colors.white,
      ),
      const Icon(
        Icons.notifications,
        size: 30,
        color: Colors.white,
      ),
      const Icon(
        Icons.account_circle_rounded,
        size: 30,
        color: Colors.white,
      ),
    ];
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          items: item,
          key: _bottomNavigationKey,
          index: _page,
          height: 60.0,
          color: Colors.black,
          buttonBackgroundColor: Colors.blue,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: screens[_page]);
  }
}
