import 'package:extended_wrap/extended_wrap.dart';
import 'package:flutter/material.dart';
import 'package:uny/=models=/user.dart';

class ProfileCharacteristics extends StatelessWidget {
  final User user;

  const ProfileCharacteristics({super.key, required this.user});

  static const kLevel1 = 20;
  static const kLevel2 = 70;

  Color _getBackColor(int count) {
    var backColor = const Color.fromRGBO(240, 240, 240, 1);
    if (count > kLevel2) {
      backColor = const Color.fromRGBO(44, 175, 228, 1);
    } else if (count > kLevel1) {
      backColor = const Color.fromRGBO(14, 158, 25, 1);
    }
    return backColor;
  }

  Color _getFontColor(int count) {
    var fontColor = Colors.black;
    if (count > kLevel2) {
      fontColor = Colors.white;
    } else if (count > kLevel1) {
      fontColor = Colors.white;
    }
    return fontColor;
  }

  List<Widget> _characteristicItems() {
    List<Widget> list = [];
    user.characteristics.forEach((item, count) {
      final chip = Container(
        padding: const EdgeInsets.fromLTRB(11, 6, 11, 6),
        decoration: BoxDecoration(
          color: _getBackColor(count),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(item.emoji),
            const SizedBox(width: 2),
            Text(
              item.title,
              style: TextStyle(
                fontSize: 16,
                letterSpacing: -0.24,
                color: _getFontColor(count),
              ),
            ),
            const SizedBox(width: 4),
            Text(
              count.toString(),
              style: TextStyle(
                fontSize: 16,
                color: _getFontColor(count).withOpacity(0.4),
              ),
            ),
          ],
        ),
      );
      list.add(chip);
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ExtendedWrap(
      maxLines: 4,
      spacing: 8,
      runSpacing: 8,
      children: _characteristicItems(),
    );
  }
}
