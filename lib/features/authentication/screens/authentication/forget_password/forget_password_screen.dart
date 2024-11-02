import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/authentication/password_reset_email/password_reset_email.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: TSizes.sm, horizontal: TSizes.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// FogetPassword Title
            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            /// ForgetPassword Subtitle
            Text(
              TTexts.forgetPasswordSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(fontSizeFactor: 0.9),
            ),

            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

// Email
            TextFormField(
              decoration: const InputDecoration(
                  labelText: TTexts.email, suffixIcon: Icon(Iconsax.direct)),
            ),

            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => PasswordResetEmail());
                  },
                  child: const Text(TTexts.submit)),
            ),
          ],
        ),
      ),
    ));
  }
}
