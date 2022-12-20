import 'package:flutter/material.dart';
import 'package:uny/=models=/characteristic.dart';
import 'package:uny/=models=/review.dart';
import 'package:uny/=models=/user.dart';

class UserProvider extends ChangeNotifier {
  User _user;

  User get user => _user;

  UserProvider(this._user);

  void addCharacteristics(List<Characteristic> characteristics) {
    final newCharacteristics = {..._user.characteristics};
    for (var ch in characteristics) {
      if (newCharacteristics.containsKey(ch)) {
        newCharacteristics[ch] = newCharacteristics[ch]! + 1;
      } else {
        newCharacteristics[ch] = 1;
      }
    }
    _user = _user.copyWith(characteristics: newCharacteristics);
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
