import 'dart:convert';

import 'package:dekada/image.dart';

class Shop {
  Shop(this._name, this._image, this._description);

  String _name;
  Image _image;
  String _description;

  String get name => _name;
  Image get image => _image;
  String get description => _description;

  Shop.fromJson(Map<String, dynamic> json) :
        this._name = json["name"],
        this._description = json["description"],
        this._image = Image.fromJson(json["image"]);

  Map<String, dynamic> toJson() {
    final json = Map<String, dynamic>();
    json["name"] = _name;
    json["description"] = _description;
    json["image"] = jsonEncode(_image);
    return json;
  }
}