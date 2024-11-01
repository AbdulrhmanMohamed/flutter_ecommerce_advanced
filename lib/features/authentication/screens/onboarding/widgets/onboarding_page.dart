import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, this.image, this.title, this.subtitle,
  });
final String ?image;
final String ? title;
final String ?subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
     Image(image: AssetImage(image!)),
    const SizedBox(height: 40,),
     Text(title! ,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
    const SizedBox(height: TSizes.spaceBtwItems,),
    Text(subtitle!,style: Theme.of(context).textTheme.headlineSmall),
    
    ],);
  }
}
