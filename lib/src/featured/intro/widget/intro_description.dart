import 'package:flutter/material.dart';

import '../../../helper/constants/app_colors.dart';
import '../../../helper/constants/app_style.dart';

import '../../shared/widgets/app_text_style.dart';

import '../model/intro_model.dart';

class IntroDescription extends StatelessWidget {
  const IntroDescription({
    super.key,
    required this.item,
  });

  final IntroModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64),
      child: Column(
        children: [
          Text(item.title, style: CustomTextStyle.bold(
            size: 24,
            color: Colors.white,
            fontWeight: FontWeight.w700
          ), textAlign: TextAlign.center,),

          Insets.gapH15,

          Text(item.description, style: CustomTextStyle.regular(
            size: 15,
            color: AppColors.gray30
          ), textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
