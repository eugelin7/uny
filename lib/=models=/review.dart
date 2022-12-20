import 'package:equatable/equatable.dart';

class Review with EquatableMixin {
  Review({
    required this.id,
    required this.name,
    required this.text,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final String name;
  final String text;
  final DateTime createdAt;
  final DateTime updatedAt;

  Review copyWith({
    int? id,
    String? name,
    String? text,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Review(
        id: id ?? this.id,
        name: name ?? this.name,
        text: text ?? this.text,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["id"],
        name: json["name"],
        text: json["text"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "text": text,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };

  factory Review.emptyReview() => Review(
        id: -1,
        name: '',
        text: '',
        createdAt: DateTime.parse('1970-01-01'),
        updatedAt: DateTime.parse('1970-01-01'),
      );

  @override
  List<Object?> get props => [id, name, text, createdAt, updatedAt];
}
