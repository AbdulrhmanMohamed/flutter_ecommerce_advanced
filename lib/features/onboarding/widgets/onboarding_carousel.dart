import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingCarousel extends StatelessWidget {
  OnBoardingCarousel({
    super.key,
   
  });

  
  final onBoardingController= OnboardingController.instance;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SmoothPageIndicator(
          onDotClicked: (index) => onBoardingController.dotNavigationClicked(index),
          controller: onBoardingController.pageController,
          count: 3,
          
          effect: ExpandingDotsEffect(
          paintStyle: PaintingStyle.fill,

              dotColor: isDark ? TColors.light : TColors.dark, dotHeight: 10),
        ),
        ElevatedButton(
        style: ElevatedButton.styleFrom(shape:const CircleBorder(),backgroundColor: isDark ? TColors.primary : TColors.black,),
            onPressed: () => onBoardingController.nextPage(),
            child: const Icon(
              Iconsax.arrow_right_3,
              
            ),)
      ],
    );
  }
}
