import 'package:uny/=models=/review.dart';

abstract class IUnyDataService {
  // получение списка отзывов
  Future<List<Review>> fetchReviews();
}
