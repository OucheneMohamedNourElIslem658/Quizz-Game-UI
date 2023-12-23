import 'package:flutter/material.dart';

class GuideText extends StatelessWidget {
  const GuideText({
    super.key,
    required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.grey,
        fontFamily: 'poppinsMedium',
      ),
    );
  }
}