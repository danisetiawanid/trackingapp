import 'package:flutter/material.dart';
import 'package:trackingapp/pages/home_screen.dart';
import 'package:trackingapp/pages/profile_screen.dart';

class BottomNavigationController extends StatefulWidget {
  const BottomNavigationController({Key? key}) : super(key: key);

  @override
  _BottomNavigationControllerState createState() => _BottomNavigationControllerState();
}

class _BottomNavigationControllerState extends State<BottomNavigationController> {
  final List<Widget> pages = const <Widget>[
    HomeScreen(
      key: PageStorageKey<String>('pageOne'),
    ),
    ProfileScreen(
      key: PageStorageKey<String>('pageTwo'),
    )
  ];
  int currentTab = 0;
  final PageStorageBucket _bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: pages[currentTab],
        bucket: _bucket,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        onTap: (int index) {
          setState(() {
            currentTab = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
