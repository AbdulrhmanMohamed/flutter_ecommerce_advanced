import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/signup/signup.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(
                    TTexts.rememberMe,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
              const SizedBox(
                height: TSizes.sm,
              ),
              TextButton(
              child:  Text(
                TTexts.forgetPassword,
                style: Theme.of(context).textTheme.labelSmall,
               ),
                onPressed: (){},
              )
            ],
          ),
          
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child:const Text(TTexts.signIn)),),
          const SizedBox(height: TSizes.spaceBtwItems,),
          SizedBox(width: double.infinity, child: OutlinedButton(onPressed: (){
          Get.to(const Signup());
          }, child:const Text(TTexts.createAccount)),),

           const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
        ],
      ),
    );
  }
}
