import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:uny/logic/feedback_data_provider.dart';
import 'package:uny/ui/widgets/main_screen/feedback_sheet.dart';

class GiveFeedbackButton extends StatelessWidget {
  const GiveFeedbackButton({super.key});

  static const kBackgroundColor = Color.fromRGBO(14, 157, 22, 0.1);
  static const kFontColor = Color.fromRGBO(14, 157, 21, 1);
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
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/edit.svg',
                  color: kFontColor,
                  height: 16,
                  width: 16,
                ),
                const SizedBox(width: 12),
                const Text(
                  'Оставить отзыв',
                  style: TextStyle(
                    color: kFontColor,
                    fontSize: 17.2,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.24,
                  ),
                ),
                //const SizedBox(width: 8),
              ],
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
                  context.read<FeedbackDataProvider>().init();
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (_) => const FeedbackSheet(),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
