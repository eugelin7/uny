import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:uny/=models=/review.dart';

class ReviewTileGoogle extends StatelessWidget {
  final Review review;

  const ReviewTileGoogle({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 117,
          decoration: const BoxDecoration(
            //color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(12)),

            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(17, 185, 124, 1),
                Color.fromRGBO(13, 156, 19, 1),
              ],
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    review.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    DateFormat('dd.MM.yyyy').format(review.createdAt),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(review.text,
                  maxLines: 3,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ))
            ],
          ),
        ),
        //-----------
        Positioned(
          top: -6,
          left: -9,
          child: SvgPicture.asset('assets/icons/lavr_l.svg'),
        ),
        //-----------
        Positioned(
          top: -6,
          right: -9,
          child: SvgPicture.asset('assets/icons/lavr_r.svg'),
        ),
      ],
    );
  }
}
