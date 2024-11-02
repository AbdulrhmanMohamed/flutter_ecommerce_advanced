import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/authentication/success/success_screen.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class PasswordResetEmail extends StatelessWidget {
  const PasswordResetEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false,actions: [IconButton(icon:const Icon(Icons.close),onPressed: (){Get.back();},)],),
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
              TTexts.changeYourPasswordTitle,
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
              TTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium!,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {Get.to(SuccessScreen());}, child: const Text(TTexts.done
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
