import 'package:dekada/page/product_list.dart';
import 'package:dekada/product.dart';
import 'package:dekada/tab_navigation/tab_with_navigator.dart';
import 'package:flutter/material.dart';

class Products extends TabWithNavigator {
  @override
  BottomNavigationBarItem get navBarItem {
    return BottomNavigationBarItem(
      icon: Icon(Icons.money_off),
      label: 'Promocje',
    );
  }

  @override
  Widget get rootWidget => ProductList(product: Product.lorem);
}
