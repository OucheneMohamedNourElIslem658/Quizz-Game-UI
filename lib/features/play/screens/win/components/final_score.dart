import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FinalScore extends StatelessWidget {
  const FinalScore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/icons/cup.svg'),
        const Text(
          '7/7',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'poppinsMedium',
            fontWeight: FontWeight.w600,
            color: Color(0xFFFBBC05)
          ),
        )
      ],
    );
  }
}