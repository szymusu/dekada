import 'package:dekada/tab_navigation/tab_with_navigator.dart';
import 'package:dekada/tab_navigation/tabs/products.dart';
import 'package:dekada/tab_navigation/tabs/settings.dart';
import 'package:dekada/tab_navigation/tabs/shops.dart';

abstract class TabList {
  static List<TabWithNavigator> tabs = [
    Shops(),
    Products(),
    Settings(),
  ];

  static int get mainTabIndex => 1;
  static TabWithNavigator get mainTab => tabs[mainTabIndex];
}