import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_game/commun/widgets/back_ground.dart';

class LoadinScreen extends StatelessWidget {
  const LoadinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGround(
        isPlaying: true,
        child: Center(
          child: SvgPicture.asset('assets/icons/loader.svg')
            .animate(onPlay: (controller) => controller.repeat())
            .rotate(duration: const Duration(milliseconds: 1200))
        ),
      ),
    );
  }
}