import 'package:flutter/material.dart';
import 'package:uny/=models=/user.dart';

class ProfileCharacteristics extends StatelessWidget {
  final User user;

  const ProfileCharacteristics({super.key, required this.user});

  List<Widget> _characteristicItems() {
    List<Widget> list = [];
    user.characteristics.forEach((item, count) {
      final chip = Container(
        //color: Colors.yellow,
        padding: const EdgeInsets.fromLTRB(11, 6, 11, 6),
        decoration: BoxDecoration(
          color: Colors.blueGrey.withOpacity(0.1),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(item.emoji),
            Text(item.title),
            Text(count.toString()),
          ],
        ),
      );
      list.add(chip);
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: _characteristicItems(),
    );
  }
}
