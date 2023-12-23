import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Question extends StatelessWidget {
  const Question({
    super.key,
    required this.isAnswering
  });

  final bool isAnswering;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        BachGroundShadow(),
        Container(
          width: Get.width -50,
          height: 150,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: isAnswering ? const Color(0xFFEA4335) : Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 24,
                color: Colors.black.withOpacity(0.15)
              ),
            ]
          ),
          child: Content(
            color: isAnswering ? Colors.white : Colors.black,
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Container BachGroundShadow() {
    return Container(
        height: 150,
        width: Get.width -120,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: const BorderRadius.all(Radius.circular(13)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              color: const Color(0xFFEA4335).withOpacity(0.5),
            ),
          ]
        ),
      );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.color
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return  Text(
      'computer hard disk was first introduced in 1956 by ',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
        fontFamily: 'poppinsMedium',
        fontWeight: FontWeight.w600,
        color: color
      ),
    );
  }
}