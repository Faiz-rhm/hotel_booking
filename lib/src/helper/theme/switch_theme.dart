import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

final SwitchThemeData appMaterialLightSwitchTheme = SwitchThemeData(
  thumbColor: MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      return Colors.white;
    }
  ),
  trackColor: MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return AppColors.primaryColor;
      }

      return AppColors.brandGray200;
    }
  ),
  trackOutlineColor: MaterialStateProperty.resolveWith(
    (final Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return AppColors.primaryColor;
      }

      return AppColors.brandGray200;
    },
  ),

);

final SwitchThemeData appMaterialDarkSwitchTheme = SwitchThemeData(
  thumbColor: MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      return AppColors.cardDarkBackgroundColor;
    }
  ),
  trackColor: MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return AppColors.primaryColor;
      }

      return AppColors.cardDarkBackgroundColor3;
    }
  ),
  trackOutlineColor: MaterialStateProperty.resolveWith(
    (final Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return AppColors.primaryColor;
      }

      return AppColors.cardDarkBackgroundColor3;
    },
  ),
);


