import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (){}, 
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 8
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        side: const BorderSide(
          color: Color(0xFFEA4335),
          width: 1.5
        )
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            'assets/icons/back.svg',
            // ignore: deprecated_member_use
            color: const Color(0xFFEA4335)
          ),
          const SizedBox(width: 10),
          const Text(
            'BACK',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'poppins',
              color: Color(0xFFEA4335)
            ),
          ),
        ],
      )
    );
  }
}