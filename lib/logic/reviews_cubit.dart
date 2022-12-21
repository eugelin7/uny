import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:uny/=models=/review.dart';
import 'package:uny/data/i_uny_data_service.dart';
import 'x_status.dart';

//------
// State

class ReviewsState extends Equatable {
  final XStatus status;
  final List<Review> reviews;
  final String? errorMessage;

  const ReviewsState({
    this.status = XStatus.initial,
    this.reviews = const [],
    this.errorMessage,
  });

  @override
  List<Object?> get props => [status, reviews, errorMessage];
}

//------
// Cubit

class ReviewsCubit extends Cubit<ReviewsState> {
  final IUnyDataService _unyDataService;

  ReviewsCubit({required IUnyDataService unyDataService})
      : _unyDataService = unyDataService,
        super(const ReviewsState());

  Future<void> getReviews() async {
    emit(const ReviewsState(status: XStatus.inProgress));
    try {
      final reviews = await _unyDataService.fetchReviews();
      emit(ReviewsState(status: XStatus.success, reviews: reviews));
    } catch (e) {
      emit(ReviewsState(status: XStatus.failure, errorMessage: e.toString()));
    }
  }

  // void toInitial() {
  //   emit(const ReviewsState(status: XStatus.initial));
  // }
}
