import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

final BottomAppBarTheme appMaterialLightBottomAppBarThemeData = BottomAppBarTheme(
  elevation: 3,
  padding: EdgeInsets.zero,
  shape: const CircularNotchedRectangle(),
  color: AppColors.cardBackgroundColor,
  surfaceTintColor: AppColors.cardBackgroundColor,
  shadowColor: Colors.black,
);

final BottomAppBarTheme appMaterialDarkBottomAppBarThemeData = BottomAppBarTheme(
  elevation: 3,
  padding: EdgeInsets.zero,
  shape: const CircularNotchedRectangle(),
  color: AppColors.cardDarkBackgroundColor,
  surfaceTintColor: AppColors.cardDarkBackgroundColor,
  shadowColor: Colors.white,
);