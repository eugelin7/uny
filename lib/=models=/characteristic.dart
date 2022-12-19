import 'package:equatable/equatable.dart';

class Characteristic with EquatableMixin {
  final int id;
  final String title;
  final String emoji;

  const Characteristic({
    required this.id,
    required this.title,
    required this.emoji,
  });

  @override
  List<Object?> get props => [id, title, emoji];
}
