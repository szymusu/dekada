import 'package:dekada/product/api.dart';
import 'package:dekada/shop.dart';
import 'package:dekada/shop/shop_list_element.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class ShopList extends StatefulWidget {
  const ShopList({Key? key}) : super(key: key);

  @override
  _ShopListState createState() => _ShopListState();
}

class _ShopListState extends State<ShopList> {
  final List<Shop> shops = List.empty(growable: true);

  void loadShops() async {
    final newShops = await Api.getAllShops();
    setState(() {
      shops.addAll(newShops);
    });
  }

  @override
  void initState() {
    super.initState();
    loadShops();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: shops.length + 1,
      itemBuilder: (context, index) {

        if (shops.isEmpty) {
          return Center(
            child: LoadingBouncingGrid.square(
              backgroundColor: Colors.purple,
            ),
          );
        }
        if (index == shops.length) {
          return SizedBox(height: 100);
        }
        return ShopListElement(shop: shops[index]);
      },
    );
  }
}
