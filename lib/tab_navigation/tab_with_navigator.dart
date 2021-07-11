import 'package:dekada/tab_navigation/tabs/tab_list.dart';
import 'package:flutter/material.dart';

abstract class TabWithNavigator {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;
  int get index => TabList.tabs.indexOf(this);

  Widget get rootWidget;
  BottomNavigationBarItem get navBarItem;
}