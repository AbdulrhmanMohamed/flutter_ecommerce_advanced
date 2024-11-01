import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_carousel.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
 final onBoardingController= Get.put(OnboardingController());
  OnboardingScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(TSizes.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           const OnboardingSkip(),
            Expanded(
              child: PageView(
              physics:const ClampingScrollPhysics(),
              onPageChanged: onBoardingController.updatePageIndex,
              controller: onBoardingController.pageController,
                children: const [
                 OnBoardingPage(image: TImages.onBoardingImage1,title: TTexts.onBoardingTitle1,subtitle: TTexts.onBoardingSubTitle1,),
                 OnBoardingPage(image: TImages.onBoardingImage2,title: TTexts.onBoardingTitle2,subtitle: TTexts.onBoardingSubTitle2,),
                 OnBoardingPage(image: TImages.onBoardingImage3,title: TTexts.onBoardingTitle3,subtitle: TTexts.onBoardingSubTitle3,)
                ],
              ),
            ),
            OnBoardingCarousel()
          ],
        ),
      ),
    );
  }
}



