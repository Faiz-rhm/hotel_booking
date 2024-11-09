
import 'package:flutter/material.dart';
import 'package:hotel_booking/src/helper/extension/dark_mode_extension.dart';

import '../../../helper/constants/app_colors.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 110,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: context.isDarkMode ? AppColors.logoDarkBackgroundColor : AppColors.logoLightBackgroundColor,
        shape: BoxShape.circle
      ),
      // child: Image.asset(AppAssets.logo)
    );
  }
}
