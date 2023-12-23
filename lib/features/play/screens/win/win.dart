import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../commun/widgets/back_ground.dart';
import '../../../../commun/widgets/my_dialog_box.dart';

import 'components/congratulations.dart';
import 'components/final_score.dart';
import 'components/name.dart';
import 'components/profile_pic.dart';

class Win extends StatelessWidget {
  const Win({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGround(
        child: Container(
          color: Colors.black.withOpacity(0.3),
          alignment: Alignment.center,
          child: MyDialogBox(
            height: 500, 
            width: Get.width-40,
            showButton: false, 
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 5,),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Congratulations(),
                    SizedBox(height: 10),
                    ProfilePic(),
                    SizedBox(height: 10),
                    Name(),
                    SizedBox(height: 10),
                    FinalScore(),
                  ],
                ),
                Spacer(flex: 4,),
                BackButton(),
                SizedBox(height: 20),
              ],
            ),
          ),
        )
      ),
    );
  }
}