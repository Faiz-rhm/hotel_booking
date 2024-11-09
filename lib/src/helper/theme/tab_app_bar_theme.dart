import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

final TabBarTheme appMaterialLightTabAppBarThemeData = TabBarTheme(
  indicator: BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    color: Colors.white
  ),
  indicatorSize: TabBarIndicatorSize.tab,
  indicatorColor: Colors.white,
  // unselectedLabelColor: AppColors.brandGray400,
  labelColor: Colors.black,
  dividerColor: Colors.white,
);
