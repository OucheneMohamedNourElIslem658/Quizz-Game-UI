import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz_game/features/sign_in/screens/login/login.dart';

class RegesterNow extends StatelessWidget {
  const RegesterNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(const Login()),
      child: Container(
        width: Get.width-44,
        padding: const EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(33)),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFEA4335),
              Color(0xFFFBBC05)
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFFFA16B).withOpacity(0.6),
              offset: const Offset(0, 4),
              blurRadius: 32
            )
          ]
        ),
        child:const Content()
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Register now",
      style: TextStyle(
        fontFamily: 'poppins',
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontSize: 20
      ),
    );
  }
}