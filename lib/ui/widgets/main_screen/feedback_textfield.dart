import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60, // 128,
      child: TextField(
        controller: _controller,
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
