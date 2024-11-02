import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/authentication/login/login_screen.dart';
import 'package:t_store/features/home/home_screen.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();

  static OnboardingController get instance => Get.find();
  RxInt currentIndex = 0.obs;
  void updatePageIndex(int index) {
    currentIndex.value = index;
  }

  dotNavigationClicked(int index) {
    currentIndex.value = index;
    pageController.animateToPage(currentIndex.value ,duration:const Duration(microseconds: 500,),curve: Curves.easeInOut);
  }

  nextPage() {
    if (currentIndex.value == 2) {
      Get.offAll(LoginScreen());
    } else {
      int page = currentIndex.value + 1;
    pageController.animateToPage(page ,duration:const Duration(microseconds: 500,),curve: Curves.easeInOut);
    }
  }

  skipPage() {}
}
