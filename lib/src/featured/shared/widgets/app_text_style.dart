import 'package:flutter/material.dart';

import '../../../helper/constants/app_colors.dart';

abstract class AppTextStyle {
  static TextStyle extraFont = const TextStyle(
    fontFamily: 'staatliches_regular',
    fontSize: 24,
  );

  static TextStyle web1 = CustomTextStyle.bold(
    size: 40,
    height: 52,
    letterSpacing: -0.2,
  );

  static TextStyle web2 = CustomTextStyle.bold(
    size: 36,
    height: 46,
    letterSpacing: -0.2,
  );

  static TextStyle web3 = CustomTextStyle.bold(
    size: 32,
    height: 48,
    letterSpacing: -0.2,
  );

  static TextStyle headline3 = CustomTextStyle.semiBold(
    size: 18,
    height: 22,
    letterSpacing: -0.2,
  );

  static TextStyle headline2 = CustomTextStyle.bold(
    size: 20,
    height: 30,
    letterSpacing: -0.2,
  );

  static TextStyle headline1 = CustomTextStyle.bold(
    size: 24,
    height: 37,
    letterSpacing: -0.2,
  );

  static TextStyle title3 = CustomTextStyle.bold(
    size: 15,
    height: 22,
    letterSpacing: -0.2,
  );
  static TextStyle title3Bold = CustomTextStyle.bold(
    size: 14,
    height: 20,
  );

  static TextStyle title2 = CustomTextStyle.semiBold(
    size: 16,
    height: 22,
    letterSpacing: -0.2,
  );

  static TextStyle title1 = CustomTextStyle.bold(
    size: 16,
    height: 22,
    letterSpacing: -0.2,
  );

  static TextStyle body3 = CustomTextStyle.medium(
    size: 14,
    height: 20,
    letterSpacing: -0.2,
  );

  static TextStyle body2 = CustomTextStyle.medium(
    size: 15,
    height: 22,
    letterSpacing: -0.2,
  );

  static TextStyle body1 = CustomTextStyle.semiBold(
    size: 15,
    height: 22,
    letterSpacing: -0.2,
  );

  static TextStyle alert1 = CustomTextStyle.semiBold(
    size: 13,
    height: 18,
    letterSpacing: -0.2,
  );

  static TextStyle alert2 = CustomTextStyle.regular(
    size: 13,
    height: 18,
    letterSpacing: -0.2,
  );

  static TextStyle desc = CustomTextStyle.regular(
    size: 12,
    height: 14,
    letterSpacing: -0.2,
  );

  static TextStyle nav = CustomTextStyle.medium(
    size: 12,
    letterSpacing: -0.2,
  );
}

class CustomTextStyle extends TextStyle {
  static const textBold = 'PlusJakartaSans';
  static const textSemiBold = 'PlusJakartaSans';
  static const textRegular = 'PlusJakartaSans';
  static const textMedium = 'PlusJakartaSans';

  const CustomTextStyle(
    String fontFamily,
    Color color,
    double size,
    FontWeight fontWeight,
    double height,
    double? letterSpacing,
    TextDecoration decoration,
    Color? decorationColor,
    double decorationThickness,
  ) : super(
            fontFamily: fontFamily,
            color: color,
            fontSize: size,
            fontWeight: fontWeight,
            height: height,
            letterSpacing: letterSpacing,
            decoration: decoration,
            decorationColor: decorationColor,
            decorationThickness: decorationThickness,
            leadingDistribution: TextLeadingDistribution.even);

  factory CustomTextStyle.regular({
    required double size,
    Color color = AppColors.primaryColor,
    FontWeight fontWeight = FontWeight.normal,
    double height = 1.5,
    double? letterSpacing,
    String fontFamily = textRegular,
    TextDecoration decoration = TextDecoration.none,
    Color? decorationColor,
    double decorationThickness = 0.0,
  }) =>
      CustomTextStyle(
          textRegular, color, size,fontWeight, height, letterSpacing, decoration, decorationColor, decorationThickness);

  factory CustomTextStyle.semiBold({
    required double size,
    Color color = AppColors.primaryColor,
    FontWeight fontWeight = FontWeight.normal,
    double height = 1.5,
    double? letterSpacing,
    String fontFamily = textSemiBold,
    TextDecoration decoration = TextDecoration.none,
    Color? decorationColor,
    double decorationThickness = 0.0,
  }) =>
      CustomTextStyle(
          textMedium, color, size, fontWeight, height, letterSpacing, decoration, decorationColor, decorationThickness);

  factory CustomTextStyle.medium({
    required double size,
    Color color = AppColors.primaryColor,
    FontWeight fontWeight = FontWeight.normal,
    double height = 1.5,
    double? letterSpacing,
    String fontFamily = textMedium,
    TextDecoration decoration = TextDecoration.none,
    Color? decorationColor,
    double decorationThickness = 0.0,
  }) =>
      CustomTextStyle(
          textMedium, color, size, fontWeight, height, letterSpacing, decoration, decorationColor, decorationThickness);

  factory CustomTextStyle.bold({
    required double size,
    Color color = AppColors.primaryColor,
    FontWeight fontWeight = FontWeight.normal,
    double height = 1.5,
    double? letterSpacing,
    String fontFamily = textBold,
    TextDecoration decoration = TextDecoration.none,
    Color? decorationColor,
    double decorationThickness = 0.0,
  }) =>
      CustomTextStyle(
          textMedium, color, size, fontWeight, height, letterSpacing, decoration, decorationColor, decorationThickness);
}
