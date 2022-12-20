import 'package:flutter/material.dart';

class AddCustomCharacteristicButton extends StatelessWidget {
  const AddCustomCharacteristicButton({super.key});

  static const kBackgroundColor = Color.fromRGBO(145, 10, 251, 0.1);
  static const kFontColor = Color.fromRGBO(145, 10, 251, 1);
  static const kBorderRadius = BorderRadius.all(Radius.circular(30));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(12, 5.5, 12, 6.5),
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: kBorderRadius,
          ),
          child: Center(
            child: Row(children: const [
              Icon(
                Icons.add_circle,
                color: kFontColor,
                size: 16,
              ),
              SizedBox(width: 6),
              Text(
                'Добавить свою характеристику',
                style: TextStyle(
                  color: kFontColor,
                  fontSize: 16,
                  letterSpacing: -0.24,
                ),
              ),
            ]),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            borderRadius: kBorderRadius,
            child: InkWell(
              borderRadius: kBorderRadius,
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}
