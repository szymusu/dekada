class Price {
  Price.fromCents(this._amount);
  Price.fromDouble(double amount) : this._amount = (amount * 100).round();
  int _amount;

  int get inCents => _amount;

  double get asDouble => _amount / 100;
  int get onlyCents => _amount % 100;
  int get roundedDown => (_amount / 100).floor();
  int get roundedUp => (_amount / 100).ceil();
  String asString([String delimiter = ","]) => asDouble.toStringAsFixed(2).replaceFirst(".", delimiter);

  Price difference(Price other) => Price.fromCents(_amount - other.inCents);
  Price sum(Price other) => Price.fromCents(_amount + other.inCents);

  Price.fromJson(Map<String, dynamic> json) : this._amount = json["amount"];

  Map<String, dynamic> toJson() {
    final json = Map<String, dynamic>();
    json["amount"] = _amount;
    return json;
  }
}
