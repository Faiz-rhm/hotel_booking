import 'package:flutter/material.dart';
import 'package:hotel_booking/src/helper/extension/dark_mode_extension.dart';

import '../../../helper/constants/app_assets.dart';

import 'social_button.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialButton(
          onTab: () {},
          image: context.isDarkMode ? AppAssets.appleDark : AppAssets.apple
        ),

        SocialButton(
          onTab: () {},
          image: AppAssets.facebook),

        SocialButton(
          onTab: () {},
          image: AppAssets.google),
      ],
    );
  }
}
