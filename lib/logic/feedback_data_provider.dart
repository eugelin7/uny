import 'dart:collection';
import 'package:uny/=models=/characteristic.dart';
import 'package:uny/=models=/review.dart';

class FeedbackDataProvider {
  int _rating = 6;
  Review _review = Review.emptyReview();
  List<Characteristic> _characteristics = [];

  //--
  int get rating => _rating;
  Review get review => _review;
  UnmodifiableListView<Characteristic> get characteristics =>
      UnmodifiableListView(_characteristics);
  //--

  void init() {
    _rating = 7;
    _review = Review.emptyReview();
    _characteristics = [];
  }

  void setRating(int newRating) {
    _rating = newRating;
  }

  void setReview(Review newReview) {
    _review = newReview;
  }

  void addCharacteristic(Characteristic ch) {
    _characteristics.add(ch);
  }

  void removeCharacteristic(Characteristic ch) {
    _characteristics.remove(ch);
  }
}
