import 'package:flutter/material.dart';
import 'package:uny/=models=/characteristic.dart';
import 'package:uny/=models=/review.dart';
import 'package:uny/=models=/user.dart';

class UserProvider extends ChangeNotifier {
  User _user;

  User get user => _user;

  UserProvider(this._user);

  void addCharacteristics(List<Characteristic> characteristics) {
    for (var ch in characteristics) {
      if (_user.characteristics.containsKey(ch)) {
        _user.characteristics[ch] = _user.characteristics[ch]! + 1;
      } else {
        _user.characteristics[ch] = 1;
      }
    }
    notifyListeners();
  }

  void addRating(int rating) {
    final newRating = (_user.rating + rating) / 2;
    _user = _user.copyWith(rating: newRating);
    notifyListeners();
  }

  void addReview(Review review) {
    final reviews = [..._user.reviews, review];
    _user = _user.copyWith(reviews: reviews);
    notifyListeners();
  }
}
