import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

final InputDecorationTheme appMaterialLightInputThemeData = InputDecorationTheme(
  fillColor: AppColors.cardBackgroundColor,
  focusColor: AppColors.cardBackgroundColor,
  hoverColor: AppColors.cardBackgroundColor,
  filled: true,
  contentPadding: const EdgeInsets.all(16),
  labelStyle: TextStyle(
    color: AppColors.cardBackgroundColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  hintStyle: TextStyle(
    color: AppColors.cardBackgroundColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  errorStyle: TextStyle(
    color: AppColors.red500,
    fontSize: 12,
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.red500,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.brandGray100,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.brandGray100,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.brandGray100,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
);

final InputDecorationTheme appMaterialDarkInputThemeData = InputDecorationTheme(
  fillColor: AppColors.cardDarkBackgroundColor,
  focusColor: AppColors.cardDarkBackgroundColor,
  hoverColor: AppColors.cardDarkBackgroundColor,
  filled: true,
  contentPadding: const EdgeInsets.all(16),
  labelStyle: const TextStyle(
    color: AppColors.textGreyColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  hintStyle: const TextStyle(
    color: AppColors.textGreyColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  errorStyle: TextStyle(
    color: AppColors.red500,
    fontSize: 12,
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.brandGray400,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.brandGray400,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.brandGray400,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.brandGray400,),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  ),
);
