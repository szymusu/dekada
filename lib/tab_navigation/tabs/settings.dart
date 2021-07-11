import 'package:dekada/tab_navigation/tab_with_navigator.dart';
import 'package:flutter/material.dart';

class Settings extends TabWithNavigator {
  @override
  BottomNavigationBarItem get navBarItem {
    return BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Ustawienia',
    );
  }

  @override
  Widget get rootWidget => Center(child: Text("USTAWIENIA"),);
}
