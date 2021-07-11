import 'package:dekada/page/product_list_element.dart';
import 'package:dekada/product.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        ProductListElement(product: product),
        ProductListElement(product: product),
        ProductListElement(product: product),
        ProductListElement(product: product),
        ProductListElement(product: product),
        ProductListElement(product: product),
        ProductListElement(product: product),
        ProductListElement(product: product),
        ProductListElement(product: product),
        ProductListElement(product: product),
        ProductListElement(product: product),
      ],
    );
  }
}
