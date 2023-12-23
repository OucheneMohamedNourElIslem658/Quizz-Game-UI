import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 250,
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.cover,
          )
        ),
        const SizedBox(height: 15),
        const Text(
          'Gdsc’s game',
          style: TextStyle(
            fontSize: 32,
            fontFamily: 'poppins',
            fontWeight: FontWeight.w600,
            color: Color(0xFF34A835)
          ),
        ),
      ],
    );
  }
}