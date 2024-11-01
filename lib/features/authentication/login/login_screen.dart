import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/app_divider.dart';
import 'package:t_store/features/authentication/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/login/widgets/login_heading.dart';
import 'package:t_store/common/widgets/app_soclial.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
              horizontal: TSizes.defaultSpace, vertical: TSizes.sm),
          child: Column(
            children: [
              // HEADER
              LoginHeading(isDark: isDark),
             
              // FORM
              const LoginForm(),
             
              // DIVIDER
              const AppDivider(dividerString: TTexts.orSignInWith,),
             const SizedBox(height:TSizes.spaceBtwItems,),

             const AppSoclial()
              // SOCIAL LINKS
            ],
          ),
        ),
      ),
    );
  }
}

