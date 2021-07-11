import 'package:dekada/tab_navigation/tab_with_navigator.dart';
import 'package:flutter/material.dart';

class Shops extends TabWithNavigator {
  @override
  BottomNavigationBarItem get navBarItem {
    return BottomNavigationBarItem(
      icon: Icon(Icons.shopping_basket),
      label: 'Sklepy',
    );
  }

  @override
  Widget get rootWidget => Center(child: Text("SKLEPY"),);
}
