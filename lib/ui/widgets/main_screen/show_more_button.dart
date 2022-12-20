import 'dart:math';
import 'package:flutter/material.dart';

class ShowMoreButton extends StatelessWidget {
  const ShowMoreButton({super.key});

  static const kBorderColor = Color(0xFFD3D3D3);
  static const kBorderRadius = BorderRadius.all(Radius.circular(10));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 38,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: kBorderRadius,
            border: Border.all(width: 1, color: kBorderColor),
          ),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Показать ещё 18',
                  style: TextStyle(
                    color: kBorderColor,
                    fontSize: 16,
                    letterSpacing: -0.24,
                  ),
                ),
                const SizedBox(width: 8),
                Transform.rotate(
                  angle: pi / 2,
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 13,
                    color: kBorderColor,
                  ),
                ),
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
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}
