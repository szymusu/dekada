class Image {
  Image(this._url);

  static const _IMG_PLACEHOLDER = "https://icon-library.com/images/no-image-available-icon/no-image-available-icon-18.jpg";
  String _url;

  String get url => _url;

  Image.fromJson(Map<String, dynamic>? json) : this._url = _IMG_PLACEHOLDER {
    if (json != null) _url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final json = Map<String, dynamic>();
    json["url"] = _url;
    return json;
  }
}