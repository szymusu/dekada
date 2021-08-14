import 'package:dekada/shop.dart';
import 'package:flutter/material.dart';

class ShopDetails extends StatelessWidget {
  final Shop shop;

  ShopDetails(this.shop);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        margin: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(shop.image.url),
            Container(
              margin: EdgeInsets.all(50),
              child: Text(
                shop.name,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              shop.description,
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
