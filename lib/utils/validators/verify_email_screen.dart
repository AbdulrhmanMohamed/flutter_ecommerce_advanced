import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
            vertical: TSizes.defaultSpace, horizontal: TSizes.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          /// VerifyImage
            const Image(
              image: AssetImage(TImages.deliveredEmailIllustration),
              height: 200,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            /// Confirm Email
            Text(
              TTexts.confirmEmail,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.sm,
            ),

            /// Support Email
            Text(TTexts.exampleEmail,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// Confirm Email Subtitle
            Text(
              TTexts.confirmEmailSubTitle,
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
