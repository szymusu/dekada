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
}
