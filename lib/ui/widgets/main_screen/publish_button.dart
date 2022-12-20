import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:uny/logic/feedback_data_provider.dart';
import 'package:uny/logic/user_provider.dart';

class PublishButton extends StatelessWidget {
  const PublishButton({super.key});

  static const kBackgroundColor = Color.fromRGBO(145, 10, 251, 1);
  static const kFontColor = Colors.white;
  static const kBorderRadius = BorderRadius.all(Radius.circular(12));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 48,
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: kBorderRadius,
          ),
          child: const Center(
            child: Text(
              'Опубликовать',
              style: TextStyle(
                color: kFontColor,
                fontSize: 17.2,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.24,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            borderRadius: kBorderRadius,
            child: InkWell(
                borderRadius: kBorderRadius,
                onTap: () {
                  final feedbackData = context.read<FeedbackDataProvider>();

                  if (feedbackData.review.text.trim().isEmpty) {
                    showTopSnackBar(
                      Overlay.of(context)!,
                      const CustomSnackBar.error(message: 'Напишите отзыв.  Хотя бы пару слов :)'),
                      animationDuration: const Duration(milliseconds: 700),
                      displayDuration: const Duration(milliseconds: 1000),
                    );
                    return;
                  }

                  final userProvider = context.read<UserProvider>();
                  userProvider.addCharacteristics(feedbackData.characteristics);
                  userProvider.addRating(feedbackData.rating);
                  userProvider.addReview(feedbackData.review);

                  Navigator.of(context).pop();
                }),
          ),
        ),
      ],
    );
  }
}
