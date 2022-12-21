import 'package:flutter/material.dart';
import 'package:uny/ui/widgets/main_screen/profile_reviews_loading.dart';
import 'give_feedback_button.dart';

class ProfileFeedbackSection extends StatelessWidget {
  const ProfileFeedbackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 9),
            child: Text(
              'Отзывы',
              style: TextStyle(
                fontSize: 17.2,
                color: Color(0xFF393939),
                fontWeight: FontWeight.w500,
                letterSpacing: -0.3,
              ),
            ),
          ),
          //SizedBox(height: 9),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: GiveFeedbackButton(),
          ),
          Expanded(
            //child: ProfileReviews(),
            child: ProfileReviewsLoading(),
          ),
        ],
      ),
    );
  }
}
