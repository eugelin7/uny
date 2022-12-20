import 'package:equatable/equatable.dart';
import 'package:uny/=models=/characteristic.dart';
import 'package:uny/=models=/review.dart';

class User with EquatableMixin {
  final int id;
  final String name;
  final String photoUrl;
  final double rating;
  final Map<Characteristic, int> characteristics;
  final List<Review> reviews;

  const User({
    required this.id,
    required this.name,
    required this.photoUrl,
    required this.rating,
    this.characteristics = const {},
    this.reviews = const [],
  });

  User copyWith({
    int? id,
    String? name,
    String? photoUrl,
    double? rating,
    Map<Characteristic, int>? characteristics,
    List<Review>? reviews,
  }) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        photoUrl: photoUrl ?? this.photoUrl,
        rating: rating ?? this.rating,
        characteristics: characteristics ?? this.characteristics,
        reviews: reviews ?? this.reviews,
      );

  @override
  List<Object?> get props => [id, name, photoUrl, rating, characteristics, reviews];
}
