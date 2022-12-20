import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:uny/data/mock_user.dart';
import 'package:uny/ui/widgets/main_screen/feedback_sheet_title.dart';
import 'package:uny/ui/widgets/main_screen/feedback_slider.dart';
import 'package:uny/ui/widgets/main_screen/feedback_textfield.dart';
import 'package:uny/ui/widgets/main_screen/profile_avatar.dart';

class FeedbackSheet extends StatelessWidget {
  const FeedbackSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        //boxShadow: [kDefaultBoxShadowHeavy],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const FeedbackSheetTitle(),
          ProfileAvatar(user: mockUser),
          const SizedBox(height: 14),
          TextOneLine(
            textAlign: TextAlign.center,
            mockUser.name,
            style: const TextStyle(
              fontSize: 20.2,
              fontWeight: FontWeight.w500,
              color: Color(0xFF393939),
            ),
          ),
          const SizedBox(height: 40),
          const TextOneLine(
            'Оцените ваше общение',
            style: TextStyle(
              fontSize: 17.2,
              fontWeight: FontWeight.w500,
              color: Color(0xFF393939),
            ),
          ),
          const SizedBox(height: 9),
          const FeedbackSlider(),
          const SizedBox(height: 9),
          const FeedbackTextField(),
        ],
      ),
    );
  }
}
