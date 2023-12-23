import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz_game/features/sign_in/screens/guide/controllers/dialog_boxes.dart';

import '../../../../commun/widgets/back_ground.dart';
import '../../widgets/logo.dart';
import 'components/how_to_play.dart';
import 'components/onboarding_tab.dart';
import 'components/resgester_now.dart';

// ignore: must_be_immutable
class Guide extends StatelessWidget {
  Guide({super.key});

  final dialogController = Get.put(DialogController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGround(
            child: Column(
              children: [
                const Spacer(),
                const Hero(tag: 'logo',child: Logo()),
                const Spacer(),
                HowToPlayButton(onPressed: () => dialogController.controleDialog()),
                const RegesterNow(),
                const SizedBox(height: 40)
              ],
            ),
          ),
          OnBoardingDialog(dialogController: dialogController),
          HowToPlay(dialogController: dialogController)
        ],
      ),
    );
  }
}