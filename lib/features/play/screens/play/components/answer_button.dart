import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.color,
    required this.onPressed
  });

  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 100,
        width: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.65),
              spreadRadius: 8
            ),
            BoxShadow(
              color: color.withOpacity(0.5),
              spreadRadius: 20
            )
          ]
        ),
        child: const Text(
          'Click',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'poppinsMedium',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}