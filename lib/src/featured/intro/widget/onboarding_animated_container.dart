import 'package:flutter/material.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/constants/app_colors.dart';

class OnboardingAnimatedContainer extends StatelessWidget {
  const OnboardingAnimatedContainer({
    super.key,
    required this.introPage, required this.index,
  });

  final int introPage, index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: context.isPhone ? 5 : 6,
      width: context.isPhone ? introPage == index ? 50 : 16 : introPage == index ? 60 : 26,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: introPage == index ? AppColors.primaryColor.withOpacity(0.7) : AppColors.primaryColor.withOpacity(0.4),
      ),
    );
  }
}
