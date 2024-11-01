import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AppSoclial extends StatelessWidget {
  const AppSoclial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Container(
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(100),border: Border.all(color: TColors.grey,width: 1)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(TImages.google),height: TSizes.iconMd,
                
              )),
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Container(
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(100),border: Border.all(color: TColors.grey,width: 1)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(TImages.facebook),height: TSizes.iconMd,
                
              )),
        ),
      ],
    );
  }
}
