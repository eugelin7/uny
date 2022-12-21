import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:provider/provider.dart';
import 'package:uny/logic/reviews_cubit.dart';
import 'package:uny/logic/user_provider.dart';
import 'package:uny/logic/x_status.dart';
import 'package:uny/ui/widgets/main_screen/profile_reviews.dart';

class ProfileReviewsLoading extends StatelessWidget {
  const ProfileReviewsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final reviewsState = context.watch<ReviewsCubit>().state;

    switch (reviewsState.status) {
      case XStatus.initial:
        return const SizedBox.shrink();
      //---
      case XStatus.inProgress:
        return LoadingBouncingGrid.circle(
          backgroundColor: const Color.fromRGBO(14, 157, 21, 0.35),
          size: 50,
        );
      //---
      case XStatus.failure:
        return Center(child: Text(reviewsState.errorMessage ?? 'Error', maxLines: 3));
      //---
      case XStatus.success:
        final userProvider = Provider.of<UserProvider>(context, listen: false);
        userProvider.setInitialReviews(reviewsState.reviews);
        return const ProfileReviews();
      //---
    }
  }
}
