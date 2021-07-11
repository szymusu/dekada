import 'package:dekada/page/product_details.dart';
import 'package:dekada/product.dart';
import 'package:flutter/material.dart';

class ProductListElement extends StatelessWidget {
  const ProductListElement({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => ProductDetails(product)),
        );
      },
      child: Card(
        child: Column(
          children: [
            Image.network(
              product.imageUrl,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    product.discountPrice.asString(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
