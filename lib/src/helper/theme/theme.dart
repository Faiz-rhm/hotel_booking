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
  canvasColor: AppColors.brandGray100,
  scaffoldBackgroundColor: AppColors.lightBackgroundColor,
  cardColor: AppColors.cardBackgroundColor,
  dividerColor: AppColors.blue100,
  highlightColor: AppColors.brandGray100,
  splashColor: AppColors.cardBackgroundColor,
  unselectedWidgetColor: Colors.white,
  disabledColor: AppColors.blue50,
  secondaryHeaderColor: AppColors.blue50,
  dialogBackgroundColor:  Colors.white,
  indicatorColor: AppColors.brandGray100,
  hintColor: AppColors.brandGray100,

  dividerTheme: DividerThemeData(color: AppColors.brandGray100),

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
    fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) { return null; }
      if (states.contains(MaterialState.selected)) { return AppColors.primaryColor; }
      return null;
    }),
  ),
);

ThemeData appDarkThemeData = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: AppColors.primaryColor,
  focusColor: Colors.black.withOpacity(0.12),
  hoverColor: Colors.black.withOpacity(0.04),
  shadowColor: Colors.white,
  canvasColor: AppColors.cardDarkBackgroundColor1,
  scaffoldBackgroundColor: AppColors.darkBackgroundColor,
  cardColor: AppColors.cardDarkBackgroundColor,
  dividerColor: AppColors.cardDarkBackgroundColor1,
  highlightColor: AppColors.darkBackgroundColor,
  splashColor: AppColors.cardDarkBackgroundColor,
  unselectedWidgetColor: AppColors.darkBackgroundColor,
  disabledColor: AppColors.blue50,
  secondaryHeaderColor: AppColors.blue50,
  dialogBackgroundColor:  AppColors.darkBackgroundColor,
  indicatorColor: AppColors.brandGray100,
  hintColor: AppColors.brandGray100,

  dividerTheme: DividerThemeData(color: AppColors.cardDarkBackgroundColor1),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: AppColors.primaryColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
    elevation: 0
  ),

  textTheme: appMaterialDarkTextTheme,

  textSelectionTheme: appMaterialLightSelectionTheme,

  appBarTheme: appMaterialDarkAppBarTheme,

  cardTheme: appMaterialDarkCardTheme,

  iconTheme: appMaterialDarkIconThemeData,

  listTileTheme: appMaterialDarkListTileThemeData,

  primaryIconTheme: appMaterialDarkIconThemeData,

  inputDecorationTheme: appMaterialDarkInputThemeData,

  tabBarTheme: appMaterialDarkTabAppBarThemeData,

  checkboxTheme: appMaterialDarkCheckBoxThemeData,

  bottomSheetTheme: appMaterialDarkBottomSheetThemeData,

  bottomAppBarTheme: appMaterialDarkBottomAppBarThemeData,

  switchTheme: appMaterialDarkSwitchTheme,

  radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) { return null; }
        if (states.contains(MaterialState.selected)) { return AppColors.primaryColor; }
        return null;
      }
    ),
  ),
);
