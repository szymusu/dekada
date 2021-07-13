import 'package:dekada/product/product_list_element.dart';
import 'package:dekada/product.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key, required this.products}) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: products.map((e) => ProductListElement(product: e)).toList(),
    );
  }
}
