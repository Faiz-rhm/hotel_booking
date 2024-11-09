import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

final CheckboxThemeData  appMaterialLightCheckBoxThemeData = CheckboxThemeData(
  fillColor: const WidgetStatePropertyAll<Color>(
    Colors.white
  ),
  checkColor: const WidgetStatePropertyAll<Color>(
    Colors.white
  ),
  side: BorderSide(color: AppColors.brandGray100),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5),
  ),
);

final CheckboxThemeData appMaterialDarkCheckBoxThemeData = CheckboxThemeData(
  fillColor: const WidgetStatePropertyAll<Color>(
    Colors.white
  ),
  checkColor: const WidgetStatePropertyAll<Color>(
    Colors.white
  ),
  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
  splashRadius: 2.0,
  side: BorderSide(color: AppColors.cardDarkBackgroundColor),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5),
  ),
);
