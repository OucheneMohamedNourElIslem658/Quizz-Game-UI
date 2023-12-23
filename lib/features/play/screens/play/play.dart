import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../commun/widgets/loading_screen.dart';
import '../../../../commun/widgets/back_ground.dart';
import 'components/answer_button.dart';
import 'components/question.dart';
import 'components/select_answer.dart';
import 'components/suggestions.dart';

// ignore: must_be_immutable
class Play extends StatelessWidget {
  Play({super.key});

  var isAnswering = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGround(
        isPlaying: true,
        child: Obx(() {
          return Column(
            children: [
              const Spacer(flex: 5),
              Question(isAnswering: isAnswering.value),
              const Spacer(flex: 3),
              isAnswering.value
                ? GestureDetector(
                  onTap: () => Get.to(const LoadinScreen()),
                  child: const GuideText(
                    text: 'Select the correct Answer'
                  ),
                )
                : const GuideText(
                  text: 'Click the Button'
                ),
              const Spacer(flex: 1),
              !isAnswering.value
                ? Stack(
                  alignment: Alignment.center,
                  children: [
                    ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 3,sigmaY: 3),
                      child: Suggestions()
                    ),
                    AnswerButton(
                      onPressed: () => isAnswering.value = true,
                      color: const Color(0xFFEA4335)
                    )
                  ],
                )
                : Suggestions(),
              const Spacer(flex: 4),
            ],
          );
        })
      ),
    );
  }
}