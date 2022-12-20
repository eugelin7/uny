import 'package:flutter/material.dart';

class FeedbackSheetTitle extends StatelessWidget {
  const FeedbackSheetTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          child: Align(
            alignment: FractionalOffset(0.5, 0),
            child: Text(
              'Оставить отзыв',
              //textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17.2,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                letterSpacing: -0.3,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const Text(
              'Отмена',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Color(0xFFFE2E47),
                letterSpacing: -0.24,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
