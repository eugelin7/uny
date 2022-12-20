import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uny/=models=/review.dart';
import 'package:uny/logic/feedback_data_provider.dart';

class FeedbackTextField extends StatefulWidget {
  const FeedbackTextField({super.key});

  @override
  State<FeedbackTextField> createState() => _FeedbackTextFieldState();
}

class _FeedbackTextFieldState extends State<FeedbackTextField> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    final initReview = Provider.of<FeedbackDataProvider>(context, listen: false).review;
    _controller.text = initReview.text;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final feedbackProvider = Provider.of<FeedbackDataProvider>(context, listen: false);
    return SizedBox(
      // TODO: Вернуть 128
      height: 128, //60, // 128,
      child: TextField(
        controller: _controller,
        onChanged: (value) {
          feedbackProvider.setReview(Review(
            id: -1,
            name: 'Eugene',
            text: value.trim(),
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          ));
        },
        keyboardType: TextInputType.multiline,
        maxLines: null,
        expands: true,
        textAlignVertical: TextAlignVertical.top,
        decoration: _kTextFieldDecoration,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}

const _kTextFieldBorderRadius = BorderRadius.all(Radius.circular(10));

const _kTextFieldDecoration = InputDecoration(
  hintText: 'Напишите отзыв',
  hintStyle:
      TextStyle(fontSize: 17, fontWeight: FontWeight.normal, color: Color.fromRGBO(0, 0, 0, 0.5)),
  alignLabelWithHint: true,
  isDense: true,
  contentPadding: EdgeInsets.symmetric(vertical: 17, horizontal: 15),
  border: OutlineInputBorder(
    borderSide: BorderSide(width: 1),
    borderRadius: _kTextFieldBorderRadius,
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 1.5),
    borderRadius: _kTextFieldBorderRadius,
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFF0F0F0), width: 1.5),
    borderRadius: _kTextFieldBorderRadius,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFF0F0F0), width: 1.5),
    borderRadius: _kTextFieldBorderRadius,
  ),
);
