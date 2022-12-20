import 'package:flutter/material.dart';

class FeedbackSlider extends StatefulWidget {
  const FeedbackSlider({super.key});

  @override
  State<FeedbackSlider> createState() => _FeedbackSliderState();
}

class _FeedbackSliderState extends State<FeedbackSlider> {
  double _value = 6;

  Color _colorByValue(int value) {
    switch (value) {
      case 1:
        return Colors.red;
      case 2:
        return Colors.red;
      case 3:
        return Colors.red;
      case 4:
        return Colors.red;
      case 5:
        return Colors.red;
      case 6:
        return Colors.red;
      case 7:
        return Colors.red;
      case 8:
        return Colors.red;
      case 9:
        return Colors.green;
      case 10:
        return Colors.green;
    }
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: 6.0,
        thumbColor: _colorByValue(_value.round()),
        activeTrackColor: _colorByValue(_value.round()),
        inactiveTrackColor: _colorByValue(_value.round()),
        overlayShape: SliderComponentShape.noOverlay,
        trackShape: _CustomTrackShape(),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Slider(
            min: 1,
            max: 10,
            value: _value,
            divisions: 9,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
          Positioned(
              top: -30,
              right: 0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    _value.round().toString(),
                    style: TextStyle(
                      fontSize: 17,
                      color: _colorByValue(_value.round()),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '/10',
                    style: TextStyle(
                      fontSize: 12.5,
                      color: Colors.black45,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class _CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx + 2;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width - 4;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
