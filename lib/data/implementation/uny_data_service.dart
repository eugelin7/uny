import 'package:dio/dio.dart';
import 'package:uny/=models=/review.dart';
import 'package:uny/data/implementation/constants.dart';
import 'package:uny/data/i_uny_data_service.dart';

class UnyDataService implements IUnyDataService {
  late final Dio _dio;

  UnyDataService() {
    _dio = Dio(kDioOptions);
  }

  @override
  Future<List<Review>> fetchReviews() async {
    try {
      final response = await _dio.get('/comments');
      final reviewsJsonArr = response.data['data'] as List<dynamic>;
      final reviews = reviewsJsonArr.map((item) => Review.fromJson(item)).toList();
      //#####################################
      // TODO: Добавить моковый отзыв от Google
      // Добавляем моковый отзыв от Google

      //#####################################
      // Увеличиваем длительность загрузки,
      // чтобы показать красивый индикатор процесса :)
      await Future.delayed(const Duration(milliseconds: 2500));

      return reviews;
    } on DioError catch (e) {
      return Future.error(e.toString());
    } catch (e) {
      return Future.error('Service error');
    }
  }
}
