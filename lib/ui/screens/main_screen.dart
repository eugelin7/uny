import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:uny/ui/widgets/main_screen/profile_section.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            const SizedBox(width: double.infinity),
            const ProfileSection(),
            const Box(
              height: 8,
              width: double.infinity,
              color: Colors.red,
            ),
            Expanded(
              child: Container(color: Colors.yellow.withOpacity(0.1)),
            )
          ],
        ));
  }
}
