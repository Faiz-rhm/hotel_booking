import 'package:flutter/material.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/constants/app_colors.dart';
import '../../../helper/constants/app_style.dart';

import '../model/intro_model.dart';

class IntroDescription extends StatelessWidget {
  const IntroDescription({
    super.key,
    required this.item,
  });

  final IntroModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        context.isPhone ? Insets.gapH45 : Insets.gapH60,

        Text(item.title, style: context.theme.textTheme.headlineSmall!.copyWith(
          fontSize: context.isPhone ? 28 : 32,
          fontWeight: FontWeight.w700),
          textAlign: TextAlign.center),

        Insets.gapH15,

        Text(item.description, style: context.theme.textTheme.bodyLarge!.copyWith(
          fontSize: context.isPhone ? 16 : 18,
          color: AppColors.brandGray300),
          textAlign: TextAlign.center,),
      ],
    );
  }
}
