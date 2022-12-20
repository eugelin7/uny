import 'package:flutter/material.dart';

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
            child: InkWell(borderRadius: kBorderRadius, onTap: () {}),
          ),
        ),
      ],
    );
  }
}
