import 'dart:convert';
import 'dart:io';

import 'package:dekada/product.dart';
import 'package:dekada/shop.dart';
import 'package:http/http.dart';

class Api {
  static const _API_URL = "http://192.168.0.112:8080/";
  static const _API_HOSTNAME = "192.168.0.112:8080";

  static Future<Response> _get(String path, [Map<String, dynamic>? params]) {
    final headers = {
      HttpHeaders.contentTypeHeader: "application/json",
    };
    final url = Uri.http(_API_HOSTNAME, path, params);
    return get(url, headers: headers);
  }
  
  static Future<Product?> getProduct(int id) async {
    Response response = await _get("/product/$id");
    if (response.statusCode == 404) return null;

    Product product = Product.fromJson(jsonDecode(response.body));
    return product;
  }

  static Future<List<Product>> getProductsRange(int page, int size) async {
    var url = Uri.http(_API_HOSTNAME, "/product", {"page": "$page", "size": "$size"});
    Response response = await get(url);
    List<dynamic> jsonList = jsonDecode(response.body)["content"];
    List<Product> products = jsonList.map((e) => Product.fromJson(e)).toList();
    return products;
  }

  static Future<Shop?> getShop(int id) async {
    Response response = await _get("/shop/$id");
    if (response.statusCode == 404) return null;

    Shop shops = Shop.fromJson(jsonDecode(response.body));
    return shops;
  }

  static Future<List<Shop>> getAllShops() async {
    Response response = await get(Uri.parse("${_API_URL}shop/"));
    List<dynamic> jsonList = jsonDecode(response.body);
    List<Shop> shops = jsonList.map((e) => Shop.fromJson(e)).toList();
    return shops;
  }
}