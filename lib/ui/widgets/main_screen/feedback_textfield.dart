import 'package:flutter/material.dart';

class FeedbackTextField extends StatefulWidget {
  const FeedbackTextField({super.key});

  @override
  State<FeedbackTextField> createState() => _FeedbackTextFieldState();
}

class _FeedbackTextFieldState extends State<FeedbackTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
        expands: true,
        textAlignVertical: TextAlignVertical.top,
        decoration: _kTextFieldDecoration,
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
  contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
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
