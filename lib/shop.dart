class Shop {
  Shop(this._name, this._logoUrl, this._description);

  String _name;
  String _logoUrl;
  String _description;

  String get name => _name;
  String get logoUrl => _logoUrl;
  String get description => _description;
}