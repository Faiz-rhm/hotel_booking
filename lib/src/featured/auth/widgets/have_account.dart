import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/constants/app_colors.dart';

import '../../shared/widgets/custom_text_button.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have an account?', style: context.theme.textTheme.bodySmall),

        CustomTextButton(
          child: Text('Log in', style: context.theme.textTheme.bodySmall!.copyWith(color: AppColors.primaryColor)),
          onPressed: () => context.pop()
        )
      ],
    );
  }
}
