import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uny/=models=/review.dart';
import 'package:uny/logic/user_provider.dart';
import 'package:uny/ui/widgets/custom_dropdown.dart';
import 'package:uny/ui/widgets/main_screen/review_tile.dart';
import 'package:uny/ui/widgets/main_screen/review_tile_google.dart';

//enum SortType { fromLastToFirst, fromFirstToLast }

class ProfileReviews extends StatefulWidget {
  const ProfileReviews({super.key});

  @override
  State<ProfileReviews> createState() => _ProfileReviewsState();
}

class _ProfileReviewsState extends State<ProfileReviews> {
  static const List<String> kSortTypes = ['Самые недавние', 'Самые старые'];
  static const kDropDownWidth = 190.0;

  String _currentSortType = kSortTypes[0];

  @override
  Widget build(BuildContext context) {
    final reviews = context.select<UserProvider, List<Review>>((provider) => provider.user.reviews);

    if (_currentSortType == kSortTypes[0]) {
      reviews.sort((a, b) => -a.createdAt.compareTo(b.createdAt));
    } else {
      reviews.sort((a, b) => a.createdAt.compareTo(b.createdAt));
    }

    return Column(children: [
      const SizedBox(height: 12),
      Row(
        children: [
          const SizedBox(width: 15),
          Text(
            'Сортировка:',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.5),
              letterSpacing: -0.25,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: kDropDownWidth,
            child: Transform.translate(
              offset: const Offset(17, 0),
              child: CustomDropdown(
                hint: '',
                dropdownItems: kSortTypes,
                dropdownWidth: kDropDownWidth - 20,
                offset: const Offset(1, 0),
                itemHeight: 34,
                value: _currentSortType,
                selectedItemBuilder: (context) {
                  return kSortTypes
                      .map((item) => Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text(
                              item,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 17,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ))
                      .toList();
                },
                onChanged: (item) {
                  setState(() {
                    _currentSortType = (item == null) ? kSortTypes[0] : item;
                  });
                },
                dropdownDecoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white),
                dropdownElevation: 2,
              ),
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
      //const SizedBox(height: 6),
      Expanded(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: reviews.length,
          itemBuilder: (_, i) => Padding(
            padding: EdgeInsets.fromLTRB(15, (i == 0) ? 7 : 10, 15, 0),
            child: (reviews[i].name.trim().toUpperCase() == 'GOOGLE')
                ? ReviewTileGoogle(review: reviews[i])
                : ReviewTile(review: reviews[i]),
          ),
        ),
      ),
    ]);
  }
}
