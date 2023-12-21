import 'package:flutter/material.dart';

Widget bottomAppBar(int selectedIndex, Function setIndex, BuildContext context) {
  return BottomNavigationBar(
        elevation: 20,
        iconSize: 25,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        selectedItemColor: Colors.blue,
        onTap: (int index) => {
          if(index != selectedIndex) {
              setIndex(index)            
          }
        },
        currentIndex: selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.image),
            label: 'About'
          ),
        ],
      );
}