import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:uny/ui/widgets/main_screen/publish_button.dart';

class FeedbackBottomSection extends StatelessWidget {
  const FeedbackBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Column(
        children: const [
          SizedBox(height: 14),
          PublishButton(),
          SizedBox(height: 15),
          TextOneLine(
            'Нажимая "Опубликовать", вы подтверждаете',
            style: TextStyle(fontSize: 15, letterSpacing: -0.24),
          ),
          TextOneLine(
            'согласие с условиями использования Uny',
            style: TextStyle(
              fontSize: 15,
              letterSpacing: -0.24,
              color: Color.fromRGBO(41, 155, 255, 1),
            ),
          ),
        ],
      ),
    );
  }
}
