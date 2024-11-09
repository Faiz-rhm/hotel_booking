import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../route/routes.dart';

import '../../../helper/constants/app_colors.dart';

import '../../shared/widgets/custom_text_button.dart';

class DoNotHaveAccount extends StatelessWidget {
  const DoNotHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don’t have an account?', style: context.theme.textTheme.bodySmall),

        CustomTextButton(
          child: Text('Sign up', style: context.theme.textTheme.bodySmall!.copyWith(color: AppColors.primaryColor)),
          onPressed: () => context.pushNamed(Routes.registerScreenRoute)
        )
      ],
    );
  }
}
