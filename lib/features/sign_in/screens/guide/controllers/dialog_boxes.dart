import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DialogController extends GetxController {
  // ignore: prefer_typing_uninitialized_variables
  var showOnBoardingDialogBox = false.obs;
  var showHelpDialogBox = false.obs;
  late PageController pageController;
  var currentPage = 0.obs;
  late GetStorage preference;

  void controleDialog() 
    => showHelpDialogBox.value = !showHelpDialogBox.value;

  void controleOnBoardingDialog() async {
    showOnBoardingDialogBox.value = false;
  }

  void animateToNextPage(){
    switch (pageController.page!.round()) {
      case 0: pageController
        .animateToPage(
          1,
          duration: const Duration(milliseconds: 300), 
          curve: Curves.easeInOut
        ); break;
      case 1: pageController
        .animateToPage(
          2,
          duration: const Duration(milliseconds: 300), 
          curve: Curves.easeInOut
        ); break;
      case 2: controleOnBoardingDialog();break;
      default: null;
    }
    
  }

  void controleOnBoardingFunctionality(){
    preference = GetStorage();
    final isShown = preference.read('isShown') as bool?;
    if (isShown == null) {
      pageController = PageController();
      pageController.addListener(() {
        currentPage.value = pageController.page!.round();
      });
      showOnBoardingDialogBox.value = true;
      preference.write('isShown', true);
    }
  }

  

  @override
  void onInit() {
    controleOnBoardingFunctionality();
    super.onInit();
  }

}