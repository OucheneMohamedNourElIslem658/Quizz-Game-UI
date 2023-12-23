import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../commun/widgets/gradient_text.dart';
import '../../../../../commun/widgets/my_dialog_box.dart';
import '../controllers/dialog_boxes.dart';

class HowToPlay extends StatelessWidget {
  const HowToPlay({
    super.key,
    required this.dialogController,
  });

  final DialogController dialogController;

  @override
  Widget build(BuildContext context) {
    return Obx((){
      if (dialogController.showHelpDialogBox.value) {
        return Stack(
          alignment: Alignment.center,
          children: [
            GestureDetector(
              onTap: () => dialogController.controleDialog(),
              child: Container(color: Colors.black.withOpacity(0.5))
            ),
            const HowToPlayDialog(),
          ],
        );
      }
      return const SizedBox();
    });
  }
}

class HowToPlayDialog extends StatelessWidget {
  const HowToPlayDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyDialogBox(
      height: Get.height*0.8,
      width: Get.width-44,
      child: const DescriptionText(),
    );
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Welcome Aymen !',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'poppins',
            fontWeight: FontWeight.w600,
            color: Colors.grey
          ),
        ),
        const SizedBox(height: 15),
        const GradientText(
          'How to play ?',
          gradient: LinearGradient(
            colors: [
              Color(0xFFEA4335),
              Color(0xFFFBBC05)
            ]
          ),
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'poppinsMedium',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          child: const Text(
            'Jorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'poppins',
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}

class HowToPlayButton extends StatelessWidget {
  const HowToPlayButton({
    super.key,
    required this.onPressed
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed ,
      child: const Text(
        'How to play ?',
        style: TextStyle(
          fontFamily: 'poppins',
          color: Color(0xFFEA4335),
          fontSize: 16,
        ),
      ),
    );
  }
}