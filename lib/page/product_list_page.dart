import 'package:dekada/page/product_list.dart';
import 'package:dekada/price.dart';
import 'package:dekada/product.dart';
import 'package:dekada/shop.dart';
import 'package:dekada/tab_navigation/tab_with_navigator.dart';
import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {//implements TabViewItem {
  const ProductListPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("żeber test"),
      ),
      body: ProductList(
        product: Product(
            "żest teber",
            "macasz kota czy ma żebra",
            Price.fromCents(2138),
            Price.fromDouble(21.37),
            Shop(
                "kitku shop",
                "https://www.wykop.pl/cdn/c3201142/comment_1594576802zjabnefpUayCAwGAhh6p2C.jpg",
                "sklep z kitkami"),
            "https://www.wykop.pl/cdn/c3201142/comment_1594576802zjabnefpUayCAwGAhh6p2C.jpg"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Promocje",
            icon: Icon(Icons.shop),
          ),
          BottomNavigationBarItem(
            label: "Ustawiena",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
