import 'dart:convert';

import 'package:dekada/image.dart';

import 'price.dart';
import 'shop.dart';

class Product {
  Product(this._name, this._description, this._regularPrice, this._discountPrice,
      this._shop, this._image);

  String _name;
  String _description;
  Price? _regularPrice;
  Price _discountPrice;
  Shop _shop;
  Image _image;

  String get name => _name;
  String get description => _description;
  Price? get regularPrice => _regularPrice;
  Price get discountPrice => _discountPrice;
  Shop get shop => _shop;
  Image get image => _image;

  Product.fromJson(Map<String, dynamic> json) :
        this._name = json["name"],
        this._description = json["description"],
        // this._regularPrice = Price.fromJson(jsonDecode(json["regularPrice"])),
        // this._discountPrice = Price.fromJson(jsonDecode(json["discountPrice"])),
        this._regularPrice = json["regularPrice"] == null ? null : Price.fromCents(json["regularPrice"]),
        this._discountPrice = Price.fromCents(json["discountPrice"]),
        this._shop = Shop.fromJson(json["shop"]),
        this._image = Image.fromJson(json["image"]);

  Map<String, dynamic> toJson() {
    final json = Map<String, dynamic>();
    json["name"] = _name;
    json["description"] = _description;
    json["regularPrice"] = jsonEncode(_regularPrice);
    json["discountPrice"] = jsonEncode(_discountPrice);
    json["shop"] = jsonEncode(_shop);
    json["image"] = jsonEncode(_image);
    return json;
  }
}
