import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../route/routes.dart';

import '../../../helper/constants/app_colors.dart';

import '../../shared/widgets/app_text_style.dart';
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
        Text('Don’t have an account?', style: CustomTextStyle.semiBold(
          size: 16,
          color: Colors.white,
          fontWeight: FontWeight.w600
        ),),

        CustomTextButton(
          child: Text('Sign up', style: CustomTextStyle.regular(
            size: 16,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600
          ),),
          onPressed: (){}
        )
      ],
    );
  }
}
