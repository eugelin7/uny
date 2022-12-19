import 'package:uny/=models=/characteristic.dart';

class User {
  final int id;
  final String name;
  final String photoUrl;
  final double rating;
  final Map<Characteristic, int> characteristics;

  const User({
    required this.id,
    required this.name,
    required this.photoUrl,
    required this.rating,
    this.characteristics = const {},
  });

  User copyWith({
    int? id,
    String? name,
    String? photoUrl,
    double? rating,
    Map<Characteristic, int>? characteristics,
  }) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        photoUrl: photoUrl ?? this.photoUrl,
        rating: rating ?? this.rating,
        characteristics: characteristics ?? this.characteristics,
      );
}
