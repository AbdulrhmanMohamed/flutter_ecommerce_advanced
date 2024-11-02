import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/authentication/login/login_screen.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    alignment: Alignment.centerRight,
    margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: TextButton(
      onPressed: ()=>Get.offAll(()=>LoginScreen()),
        child: Text(
          "Skip",
          style: Theme.of(context).textTheme.titleSmall,
          
        ),
      ),
    );
  }
}
