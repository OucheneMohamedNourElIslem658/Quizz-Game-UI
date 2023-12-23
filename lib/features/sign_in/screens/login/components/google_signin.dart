import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quizz_game/features/play/screens/play/play.dart';

class GoogleSignIn extends StatelessWidget {
  const GoogleSignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Color.fromRGBO(0, 0, 0, 0.10),
          ),
        ]
      ),
      child: ElevatedButton(
        onPressed: () => Get.offAll(Play()), 
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 65,vertical: 13),
          backgroundColor: Colors.white,
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          )
        ),
        child: const Content()
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
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset('assets/images/google.svg'),
        const SizedBox(width: 15),
        const Text(
          'Log in with Google',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'poppins',
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}