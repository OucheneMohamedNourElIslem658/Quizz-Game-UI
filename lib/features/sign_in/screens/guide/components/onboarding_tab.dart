import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../commun/widgets/my_dialog_box.dart';
import '../controllers/dialog_boxes.dart';

class OnBoardingDialog extends StatelessWidget {
  const OnBoardingDialog({
    super.key,
    required this.dialogController,
  });

  final DialogController dialogController;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (dialogController.showOnBoardingDialogBox.value) {
        return Stack(
          alignment: Alignment.center,
          children: [
            GestureDetector(
              onTap: () => dialogController.controleOnBoardingDialog(),
              child: Container(color: Colors.black.withOpacity(0.5))
            ),
            MyDialogBox(
              height: 320, 
              width: 340, 
              showDecoration: false,
              radius: 40,
              buttonEffect: () => dialogController.animateToNextPage(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    const Spacer(flex: 2),
                    SizedBox(
                      height: 150,
                      child: PageView.builder(
                        controller: dialogController.pageController,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return const Description();
                        },
                      ),
                    ),
                    const Spacer(),
                    TabIndicator(currentPage: dialogController.currentPage.value),
                    const Spacer(flex: 3),
                  ],
                ),
              )
            ),
          ],
        );
      } return const SizedBox();
    });
  }
}

class TabIndicator extends StatelessWidget {
  const TabIndicator({
    super.key,
    required this.currentPage
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3, 
        (index) {
          return Container(
            height: 8,
            width: 30,
            margin: EdgeInsets.only(right: index == 2 ? 0 : 12),
            decoration: BoxDecoration(
              color: index != currentPage
                ? const Color(0xFFDCDFE3) 
                : const Color(0xFFEA4335),
              borderRadius: const BorderRadius.all(Radius.circular(20))
            ),
          );
        }
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Interesting QUIZ Awaits You',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'poppinsMedium',
            color: Color(0xFF4285F4),
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 12),
        Text(
          'play quizzes with your friends and get various prizes',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'poppins',
            color: Color(0xFFA7A7A7),
          ),
        ),
      ],
    );
  }
}