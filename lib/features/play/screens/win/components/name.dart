import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  const Name({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Lpechen Zin",
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'poppinsMedium',
        fontWeight: FontWeight.w600
      ),
    );
  }
}