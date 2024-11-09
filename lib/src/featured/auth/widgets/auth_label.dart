import 'package:flutter/material.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/constants/app_colors.dart';
import '../../../helper/constants/app_style.dart';

class AuthLabel extends StatelessWidget {
  const AuthLabel({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: context.theme.textTheme.headlineSmall, textAlign: TextAlign.center,),

        Insets.gapH5,

        Text(subTitle,
          style: context.theme.textTheme.bodyMedium!.copyWith(color: AppColors.brandGray400),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
