import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'app_bar_theme.dart';
import 'bottom_app_bar_theme.dart';
import 'bottom_sheet_theme.dart';
import 'card_theme.dart';
import 'check_box_theme.dart';
import 'icon_theme_data.dart';
import 'list_tile_theme_data.dart';
import 'switch_theme.dart';
import 'tab_app_bar_theme.dart';
import 'text_field_theme.dart';
import 'text_selection_theme.dart';
import 'text_theme.dart';

ThemeData appLightThemeData = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: AppColors.primaryColor,
  focusColor: Colors.white.withOpacity(0.12),
  hoverColor: Colors.white.withOpacity(0.04),
  shadowColor: Colors.black,
  // canvasColor: AppColors.brandGray100,
  // scaffoldBackgroundColor: AppColors.lightBackgroundColor,
  // cardColor: AppColors.cardBackgroundColor,
  // dividerColor: AppColors.blue100,
  // highlightColor: AppColors.brandGray100,
  // splashColor: AppColors.cardBackgroundColor,
  unselectedWidgetColor: Colors.white,
  // disabledColor: AppColors.blue50,
  // secondaryHeaderColor: AppColors.blue50,
  dialogBackgroundColor:  Colors.white,
  // indicatorColor: AppColors.brandGray100,
  // hintColor: AppColors.brandGray100,

  // dividerTheme: DividerThemeData(color: AppColors.brandGray100),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: AppColors.primaryColor,
    splashColor: AppColors.primaryColor,
    hoverColor: AppColors.primaryColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
    elevation: 0
  ),

  textTheme: appMateriaLightTextTheme,

  textSelectionTheme: appMaterialLightSelectionTheme,

  appBarTheme: appMaterialLightAppBarTheme,

  cardTheme: appMaterialLightCardTheme,

  iconTheme: appMaterialLightIconThemeData,

  listTileTheme: appMaterialLightListTileThemeData,

  primaryIconTheme: appMaterialLightIconThemeData,

  inputDecorationTheme: appMaterialLightInputThemeData,

  tabBarTheme: appMaterialLightTabAppBarThemeData,

  checkboxTheme: appMaterialLightCheckBoxThemeData,

  bottomSheetTheme: appMaterialLightBottomSheetThemeData,

  bottomAppBarTheme: appMaterialLightBottomAppBarThemeData,

  switchTheme: appMaterialLightSwitchTheme,

  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
      if (states.contains(WidgetState.disabled)) { return null; }
      if (states.contains(WidgetState.selected)) { return AppColors.primaryColor; }
      return null;
    }),
  ),
);

