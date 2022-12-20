import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uny/logic/user_provider.dart';
import 'package:uny/ui/widgets/main_screen/add_custom_characteristic_button.dart';
import 'package:uny/ui/widgets/main_screen/feedback_bottom_section.dart';
import 'package:uny/ui/widgets/main_screen/feedback_characteristics.dart';
import 'package:uny/ui/widgets/main_screen/feedback_sheet_title.dart';
import 'package:uny/ui/widgets/main_screen/feedback_slider.dart';
import 'package:uny/ui/widgets/main_screen/feedback_textfield.dart';
import 'package:uny/ui/widgets/main_screen/profile_avatar.dart';

class FeedbackSheet extends StatelessWidget {
  const FeedbackSheet({super.key});

  static const kLabelTextStyle = TextStyle(
    fontSize: 17.2,
    fontWeight: FontWeight.w500,
    color: Color(0xFF393939),
  );

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context, listen: false).user;
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
          //ProfileAvatar(user: user),
          //const SizedBox(height: 14),
          TextOneLine(
            textAlign: TextAlign.center,
            user.name,
            style: const TextStyle(
              fontSize: 20.2,
              fontWeight: FontWeight.w500,
              color: Color(0xFF393939),
            ),
          ),
          const SizedBox(height: 40),
          const TextOneLine('Оцените ваше общение', style: kLabelTextStyle),
          const SizedBox(height: 9),
          const FeedbackSlider(),
          const SizedBox(height: 16),
          const FeedbackTextField(),
          const SizedBox(height: 15),
          const TextOneLine('Короткая характеристика', style: kLabelTextStyle),
          const SizedBox(height: 9),
          Row(children: const [AddCustomCharacteristicButton()]),
          const SizedBox(height: 20),
          const Expanded(
            child: SingleChildScrollView(child: FeedbackCharacteristics()),
          ),
          const FeedbackBottomSection()
        ],
      ),
    );
  }
}
