import 'package:uny/=models=/user.dart';
import 'package:uny/data/mock/mock_characteristics.dart';
import 'package:uny/data/mock/mock_reviews.dart';

final mockUser = User(
  id: 1,
  name: 'Антон Дегтярёв',
  photoUrl: 'assets/images/avatar.png',
  rating: 8.7,
  characteristics: {
    mockCharacteristics[0]: 85,
    mockCharacteristics[1]: 29,
    mockCharacteristics[2]: 12,
    mockCharacteristics[3]: 8,
    mockCharacteristics[4]: 1,
    mockCharacteristics[5]: 2,
    mockCharacteristics[6]: 4,
  },
  reviews: [], //kMockReviews,
);
