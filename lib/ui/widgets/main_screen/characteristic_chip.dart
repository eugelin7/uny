import 'package:flutter/material.dart';
import 'package:uny/=models=/characteristic.dart';

class CharacteristicChip extends StatefulWidget {
  final Characteristic item;

  const CharacteristicChip({super.key, required this.item});

  @override
  State<CharacteristicChip> createState() => _CharacteristicChipState();
}

class _CharacteristicChipState extends State<CharacteristicChip> {
  bool _isSelected = false;

  static const kBackColor = Color.fromRGBO(240, 240, 240, 1);
  static const kSelectedBackColor = Color.fromRGBO(145, 10, 251, 0.35);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(11, 6, 11, 6),
        decoration: BoxDecoration(
          color: _isSelected ? kSelectedBackColor : kBackColor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.item.emoji),
            const SizedBox(width: 2),
            Text(
              widget.item.title,
              style: const TextStyle(
                fontSize: 16,
                letterSpacing: -0.24,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
