import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileCaption extends StatelessWidget {
  const ProfileCaption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/icons/back_arrow.svg',
          width: 18,
          height: 18,
          color: Colors.white,
        ),
        const TextOneLine(
          'Рейтинг профиля',
          style: TextStyle(
            fontSize: 17.5,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        SvgPicture.asset(
          'assets/icons/forward.svg',
          width: 16.5,
          height: 14,
          color: Colors.white,
        ),
      ],
    );
  }
}
