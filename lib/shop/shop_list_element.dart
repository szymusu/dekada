import 'package:dekada/shop.dart';
import 'package:dekada/shop/shop_details.dart';
import 'package:flutter/material.dart';

class ShopListElement extends StatelessWidget {
  const ShopListElement({Key? key, required this.shop}) : super(key: key);

  final Shop shop;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 70,
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => ShopDetails(shop)),
        );
      },
      leading: Image.network(shop.image.url),
      title: Text(
        shop.name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      minVerticalPadding: 16,
    );
  }
}
