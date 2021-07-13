import 'package:dekada/shop.dart';
import 'package:dekada/shop/shop_list_element.dart';
import 'package:flutter/material.dart';

class ShopList extends StatelessWidget {
  const ShopList({Key? key, required this.shops}) : super(key: key);

  final List<Shop> shops;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: shops.length,
      itemBuilder: (context, index) => ShopListElement(shop: shops[index]),
    );
  }
}
