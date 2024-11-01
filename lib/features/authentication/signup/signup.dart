import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/app_divider.dart';
import 'package:t_store/common/widgets/app_soclial.dart';
import 'package:t_store/features/authentication/signup/widgets/signup_form.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
            vertical: TSizes.defaultSpace, horizontal: TSizes.defaultSpace),
        child: Column(
          children: [
            // SIGNUP TITLE
            Text(TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(
              height: TSizes.defaultSpace,
            ),

          // SIGNUP FORM
            SignupForm(isDark: isDark),
            const SizedBox(height: TSizes.spaceBtwItems,),

            // DIVIDER
           const AppDivider(dividerString: TTexts.orSignUpWith,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            
            // SOCIAL LINKS
            const AppSoclial()
          ],
        ),
      ),
    ));
  }
}

