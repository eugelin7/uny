import 'package:flutter/material.dart';

class ProfileBackground extends StatelessWidget {
  const ProfileBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromRGBO(109, 61, 211, 1),
              Color.fromRGBO(78, 82, 214, 1),
            ],
            begin: Alignment(0.0, 0.0),
            end: Alignment(0.549, 0.836),
            stops: [0.2, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Image.asset('assets/images/back.png'),
    );
  }
}
