import 'package:dekada/price.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  group("Price construction", () {
    
    test('Price in cents should be set by cents constructor', () {
      final price = Price.fromCents(111);
      expect(price.inCents, 111);
    });
    
    test('Price in cents should be set by double constructor', () {
      final price = Price.fromDouble(1.11);
      expect(price.inCents, 111);
    });
  });

  group("Price display", () {

    test('Price should display as double', () {
      final price = Price.fromCents(9999);
      expect(price.asDouble, 99.99);
    });

    test('Price should display as string with default delimiter', () {
      final price = Price.fromCents(9999);
      expect(price.asString(), "99,99");
    });

    test('Price should display as string with specified delimiter', () {
      final price = Price.fromCents(9999);
      final delimiter = "rampampampam";
      expect(price.asString(delimiter), "99$delimiter"+"99");
    });

    test('Price should display as string with 2 digits after delimiter', () {
      final price = Price.fromCents(210);
      final price2 = Price.fromCents(200);
      expect(price.asString(), "2,10");
      expect(price2.asString(), "2,00");
    });

    test('Price should display only cents', () {
      final price = Price.fromCents(9999);
      expect(price.onlyCents, 99);
    });

    test('Price should display rounded down', () {
      final price = Price.fromCents(9999);
      expect(price.roundedDown, 99);
    });

    test('Price should display rounded up', () {
      final price = Price.fromCents(9999);
      expect(price.roundedUp, 100);
    });
  });

  group("Price calculation", () {

    test('Prices should add', () {
      final price1 = Price.fromCents(23123);
      final price2 = Price.fromCents(932);
      expect(price1.sum(price2).inCents, price1.inCents + price2.inCents);
    });

    test('Price should subtract', () {
      final price1 = Price.fromCents(23123);
      final price2 = Price.fromCents(932);
      expect(price1.difference(price2).inCents, price1.inCents - price2.inCents);
    });
  });

}