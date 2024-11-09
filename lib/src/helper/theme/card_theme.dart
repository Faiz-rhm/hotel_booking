import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

CardTheme appMaterialLightCardTheme = CardTheme(
  clipBehavior: Clip.hardEdge,
  color: AppColors.cardBackgroundColor,
  shadowColor: AppColors.blue100,
  surfaceTintColor: AppColors.blue100,
  elevation: 0,
  margin: const EdgeInsets.all(0)
);

CardTheme appMaterialDarkCardTheme = CardTheme(
  clipBehavior: Clip.hardEdge,
  color: AppColors.cardDarkBackgroundColor,
  shadowColor: AppColors.blue100,
  surfaceTintColor: AppColors.blue100,
  elevation: 0,
  margin: const EdgeInsets.all(0)
);
