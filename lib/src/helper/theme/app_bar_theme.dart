import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/app_colors.dart';
import 'primary_icon_theme.dart';


final AppBarTheme appMaterialLightAppBarTheme = AppBarTheme(
  // backgroundColor: AppColors.lightBackgroundColor,
  // foregroundColor: AppColors.lightBackgroundColor,
  scrolledUnderElevation: 0.0,
  elevation: 0.0,
  // shadowColor: AppColors.lightBackgroundColor,
  centerTitle: true,
  iconTheme: appMaterialLightPrimaryIconTheme,
  actionsIconTheme: appMaterialLightPrimaryIconTheme,
  titleSpacing: 2,
  toolbarHeight: 56,
  systemOverlayStyle: const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ),
  titleTextStyle: appBarLightTitleStyle,
  // toolbarTextStyle: appBarLightToolbarStyle,
  surfaceTintColor: Colors.white,
);


TextStyle appBarLightTitleStyle = const TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

// TextStyle appBarLightToolbarStyle = TextStyle(
//   color: AppColors.blue100,
// );
