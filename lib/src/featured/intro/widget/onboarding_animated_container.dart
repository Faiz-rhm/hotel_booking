import 'package:flutter/material.dart';

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
      height: 8,
      width: introPage == index ? 24 : 8,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: introPage == index ? AppColors.primaryColor : AppColors.gray50,
      ),
    );
  }
}
