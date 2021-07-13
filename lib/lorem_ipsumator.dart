import 'package:dekada/price.dart';
import 'package:dekada/product.dart';
import 'package:dekada/shop.dart';

class LoremIpsumator {
  static Product product = Product(
    "żest teber",
    "macasz kota czy ma żebra " * 10,
    Price.fromCents(2138),
    Price.fromDouble(21.37),
    shop,
    "https://www.wykop.pl/cdn/c3201142/comment_1594576802zjabnefpUayCAwGAhh6p2C.jpg",
  );
  static List<Product> productList = [
    product,
    product,
    product,
    product,
    product,
    product,
    product,
    product,
    product,
  ];

  static Shop shop = Shop(
    "kitku shop",
    "https://www.wykop.pl/cdn/c3201142/comment_1594576802zjabnefpUayCAwGAhh6p2C.jpg",
    "sklep z kitkami " * 15,
  );
  static List<Shop> shopList = [
    shop,
    shop,
    shop,
    shop,
    shop,
    shop,
    shop,
    shop,
    shop,
  ];
}
