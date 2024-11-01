import 'package:flutter/material.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: Text(
        "Skip",
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.end,
        
      ),
    );
  }
}
