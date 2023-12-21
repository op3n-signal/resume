import 'package:flutter/material.dart';
import 'package:portfolio/screens/about_screen.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/widget/bottom_app_bar.dart';

class NavControl extends StatefulWidget {
  const NavControl({Key? key}) : super(key: key);

  @override
  _NavControlState createState() => _NavControlState();
}

class _NavControlState extends State<NavControl> {

  //home page is default since first in list
  final List<Widget> _pages = [
    HomeScreen(key: PageStorageKey('Page1')),
    AboutScreen(key: PageStorageKey('Page2'))
  ];
  final PageStorageBucket _bucket = PageStorageBucket();
  int _selectedIndex = 0;

  Widget _bottomNavigationBar(BuildContext context, int selectedIndex) => bottomAppBar(selectedIndex, setIndex, context);

  void setIndex(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(context, _selectedIndex),
      body: PageStorage(
        child: SafeArea(child: _pages[this._selectedIndex]),
        bucket: _bucket,
      ),
    );
  }
}
