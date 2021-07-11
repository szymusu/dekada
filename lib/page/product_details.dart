import 'package:dekada/page/shop_details.dart';
import 'package:dekada/product.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails(this.product);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(product.imageUrl),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "${product.discountPrice.asString()} zł",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${product.normalPrice.asString()} zł",
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              product.description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Divider(
            thickness: 3,
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => ShopDetails(product.shop)),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    product.shop.name,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Image.network(
                    product.shop.logoUrl,
                    height: 50,
                    width: 50,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
