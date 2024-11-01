import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class AppDivider extends StatelessWidget {
final String? dividerString;
  const AppDivider({
    super.key,
    this.dividerString
  });

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    const Expanded(child: Divider(color: TColors.grey,height: TSizes.dividerHeight,endIndent: 20,thickness:1,indent: 20,)),
    
     Text(dividerString!,style: Theme.of(context).textTheme.bodySmall,),
               const  Expanded(child: Divider(color: TColors.grey,height: TSizes.dividerHeight,thickness:1,indent: 20,endIndent: 20,)),
    
    ],);
  }
}

