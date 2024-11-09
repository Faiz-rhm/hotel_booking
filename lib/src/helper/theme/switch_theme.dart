import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

final SwitchThemeData appMaterialLightSwitchTheme = SwitchThemeData(
  thumbColor: WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      return Colors.white;
    }
  ),
  trackColor: WidgetStateProperty.resolveWith<Color?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primaryColor;
      }
      return null;

      // return AppColors.brandGray200;
    }
  ),
  trackOutlineColor: WidgetStateProperty.resolveWith(
    (final Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primaryColor;
      }
      return null;

      // return AppColors.brandGray200;
    },
  ),
);

