import 'dart:typed_data';

class Picture {
  Uint8List? picture;

  Picture(this.picture);

  Picture.fromMap(Map map) {
    picture = map[picture];
  }

  Map<String, dynamic> toMap() => {
        "picture": picture,
      };
}
