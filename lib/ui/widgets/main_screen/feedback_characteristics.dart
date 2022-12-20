import 'package:flutter/material.dart';
import 'package:uny/data/mock_characteristics.dart';
import 'package:uny/ui/widgets/main_screen/characteristic_chip.dart';

class FeedbackCharacteristics extends StatelessWidget {
  const FeedbackCharacteristics({super.key});

  List<Widget> _characteristicItems() {
    List<Widget> list = [];
    for (var item in mockCharacteristics) {
      list.add(CharacteristicChip(item: item));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: _characteristicItems(),
    );
  }
}
