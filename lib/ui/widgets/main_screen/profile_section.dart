import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uny/logic/user_provider.dart';
import 'package:uny/ui/widgets/main_screen/profile_avatar.dart';
import 'package:uny/ui/widgets/main_screen/profile_background.dart';
import 'package:uny/ui/widgets/main_screen/profile_caption.dart';
import 'package:uny/ui/widgets/main_screen/profile_characteristics.dart';
import 'package:uny/ui/widgets/main_screen/show_more_button.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context, listen: false).user;
    return SizedBox(
      // TODO: Вернуть 488
      height: 488, //250, //488,
      width: double.infinity,
      child: Stack(
        children: [
          // background
          const ProfileBackground(),
          // caption
          const Positioned(
            top: 62,
            left: 17,
            right: 17,
            child: ProfileCaption(),
          ),
          //
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 331,
              padding: const EdgeInsets.fromLTRB(15, 62, 15, 12),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextOneLine(
                    textAlign: TextAlign.center,
                    user.name,
                    style: const TextStyle(
                      fontSize: 20.2,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF393939),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const ProfileCharacteristics(),
                  const SizedBox(height: 19),
                  const ShowMoreButton(),
                ],
              ),
            ),
          ),
          // avatar
          const Positioned(
            child: Align(
              alignment: FractionalOffset(0.5, 0.232),
              child: ProfileAvatar(),
            ),
          ),
        ],
      ),
    );
  }
}
