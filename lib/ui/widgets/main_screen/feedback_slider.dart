import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uny/logic/feedback_data_provider.dart';

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
        return const Color.fromRGBO(255, 67, 65, 1);
      case 2:
        return const Color.fromRGBO(251, 82, 66, 1);
      case 3:
        return const Color.fromRGBO(245, 107, 67, 1);
      case 4:
        return const Color.fromRGBO(229, 185, 72, 1);
      case 5:
        return const Color.fromRGBO(190, 219, 72, 1);
      case 6:
        return const Color.fromRGBO(105, 229, 68, 1);
      case 7:
        return const Color.fromRGBO(37, 241, 49, 1);
      case 8:
        return const Color.fromRGBO(30, 254, 8, 1);
      case 9:
        return const Color.fromRGBO(29, 255, 2, 1);
      case 10:
        return const Color.fromRGBO(29, 255, 0, 1);
    }
    return Colors.grey;
  }

  @override
  void didChangeDependencies() {
    final initRating = Provider.of<FeedbackDataProvider>(context, listen: false).rating;
    setState(() {
      _value = initRating.toDouble();
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final feedbackProvider = Provider.of<FeedbackDataProvider>(context, listen: false);

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
              feedbackProvider.setRating(value.toInt());
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
