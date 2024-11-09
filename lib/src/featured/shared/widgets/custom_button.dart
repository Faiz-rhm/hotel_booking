import 'package:flutter/material.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/constants/app_colors.dart';
import 'app_text_style.dart';

class CustomButton extends StatelessWidget {
  final Function() onTab;
  final String text;
  final Color background;
  final Color textColor;
  final Color borderColor;
  final Color splashColor;


  const CustomButton({
    super.key,
    required this.onTab,
    this.background = Colors.white,
    this.textColor = Colors.white,
    this.borderColor = Colors.grey,
    this.splashColor = Colors.grey,
    required this.text});

   const CustomButton.primary({
    super.key,
    required this.onTab,
    this.background = AppColors.primaryColor,
    this.textColor = Colors.white,
    this.borderColor = AppColors.primaryColor,
    this.splashColor = Colors.greenAccent,
    required this.text});

  const CustomButton.secondary({
    super.key,
    required this.onTab,
    this.background = Colors.transparent,
    this.textColor = AppColors.primaryColor,
    this.borderColor = AppColors.primaryColor,
    this.splashColor = Colors.transparent,
    required this.text});

  const CustomButton.cancel({
    super.key,
    required this.onTab,
    this.background = Colors.red,
    this.textColor = Colors.white,
    this.borderColor = Colors.red,
    this.splashColor = Colors.red,
    required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      highlightElevation: 0,
      height: context.isPhone ? 56 : 60,
      color: background,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
        side: BorderSide(color: borderColor),
      ),
      onPressed: onTab,
      splashColor: splashColor.withOpacity(0.7),
      hoverColor: splashColor.withAlpha(100),
      highlightColor: splashColor.withOpacity(0.1),
      child: Text(text, style: CustomTextStyle.medium(
        size: 16,
        color: Colors.white,
        fontWeight: FontWeight.w600
      ), textAlign: TextAlign.center,),
    );
  }
}
