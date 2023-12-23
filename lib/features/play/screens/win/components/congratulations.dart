import 'package:flutter/material.dart';

import '../../../../../commun/widgets/gradient_text.dart';

class Congratulations extends StatelessWidget {
  const Congratulations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const GradientText(
      'Congratulations!', 
      gradient: LinearGradient(
        colors: [
          Color(0xFFEA4335),
          Color(0xFFFBBC05)
        ]
      ),
      style: TextStyle(
        fontSize: 28,
        fontFamily: 'poppinsMedium',
        fontWeight: FontWeight.bold
      ),
    );
  }
}