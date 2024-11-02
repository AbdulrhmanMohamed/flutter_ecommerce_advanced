import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text.rich(
        TextSpan(children: [
          TextSpan(
              text: '${TTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${TTexts.privacyPolicy} ',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(
                      color: isDark
                          ? TColors.white
                          : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: isDark
                          ? TColors.white
                          : TColors.primary)),
          TextSpan(
              text: '${TTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${TTexts.termsOfUse} ',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(
                      color: isDark
                          ? TColors.white
                          : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: isDark
                          ? TColors.white
                          : TColors.primary)),
        ]),
      ),
    );
  }
}
