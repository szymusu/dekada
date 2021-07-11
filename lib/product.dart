import 'price.dart';
import 'shop.dart';

class Product {
  Product(this._name, this._description, this._normalPrice, this._discountPrice,
      this._shop, this._imageUrl);

  String _name;
  String _description;
  String _imageUrl;
  Price _normalPrice;
  Price _discountPrice;
  Shop _shop;

  String get name => _name;
  String get description => _description;
  Price get normalPrice => _normalPrice;
  Price get discountPrice => _discountPrice;
  Shop get shop => _shop;
  String get imageUrl => _imageUrl;

  static Product lorem = Product(
      "żest teber",
      "macasz kota czy ma żebra",
      Price.fromCents(2138),
      Price.fromDouble(21.37),
      Shop(
          "kitku shop",
          "https://www.wykop.pl/cdn/c3201142/comment_1594576802zjabnefpUayCAwGAhh6p2C.jpg",
          "sklep z kitkami"),
      "https://www.wykop.pl/cdn/c3201142/comment_1594576802zjabnefpUayCAwGAhh6p2C.jpg");
}
