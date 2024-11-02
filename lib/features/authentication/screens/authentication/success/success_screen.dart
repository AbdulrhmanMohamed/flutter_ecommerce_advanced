import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
            vertical: TSizes.appBarHeight, horizontal: TSizes.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          /// Success Image
            const Image(
              image: AssetImage(TImages.staticSuccessIllustration),
              height: 200,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            /// Success Account Title
            Text(
              TTexts.yourAccountCreatedTitle,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
        
            
            const SizedBox(height: TSizes.spaceBtwItems),

            /// Success Subtitle
            Text(
              TTexts.yourAccountCreatedSubTitle,
              style: Theme.of(context).textTheme.labelMedium!,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text(TTexts.tContinue)),
            ),
          ],
        ),
      ),
    ));
  }
}
