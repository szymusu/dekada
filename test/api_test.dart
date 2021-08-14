import 'package:dekada/product.dart';
import 'package:dekada/product/api.dart';
import 'package:dekada/shop.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Fetch API", () {

    test('GET single product', () async {
      Product? product = await Api.getProduct(10);
      expect(product!.name, "Kompjuter Gejmingowy");
    });

    test('GET all products', () async {
      final products = await Api.getProductsRange(0, 10);
      print(products[0].name);
      print(products[0].description);
      print(products[0].image.url);
      print(products[0].shop.name);
      expect(2, products.length);
    });

    test('GET single shop', () async {
      Shop? product = await Api.getShop(6);
      expect(product!.name, "Januszex Digital");
    });

    test('GET all shops', () async {
      final shops = await Api.getAllShops();
      print(shops[0].name);
      print(shops[0].description);
      print(shops[0].image.url);
      expect(4, shops.length);
    });
  });
}