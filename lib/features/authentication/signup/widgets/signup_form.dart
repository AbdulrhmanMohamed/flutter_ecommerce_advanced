import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/signup/widgets/terms_conditions.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              /// FirstName
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: TSizes.md,
              ),

              /// LastName
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.md,
          ),

          /// Username
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user),
              labelText: TTexts.username,
            ),
          ),
          const SizedBox(
            height: TSizes.md,
          ),

          /// Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: TTexts.email,
            ),
          ),

          const SizedBox(
            height: TSizes.md,
          ),

          /// Phone
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: TTexts.phoneNo,
            ),
          ),

          const SizedBox(
            height: TSizes.md,
          ),

          /// Password
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),

          const SizedBox(
            height: TSizes.md,
          ),

          /// CheckBox & Terms And Condtions
          Row(children: [
            SizedBox(
                width: 24,
                child: Checkbox(value: true, onChanged: (value) => {})),
            const SizedBox(
              width: TSizes.sm,
            ),
            TermsAndCondition(isDark: isDark),
          ]),
          const SizedBox(
            height: TSizes.md,
          ),

          /// Create Account Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: const Text(TTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
