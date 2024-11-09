import 'package:flutter/material.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/constants/app_style.dart';

import 'custom_button.dart';

class NoDataFound extends StatelessWidget {
  final String title, subTitle, buttonTitle;
  final Function() onPressed;

  const NoDataFound({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onPressed,
    required this.buttonTitle
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Lottie.asset(
              //   height: context.isPhone ? context.height * 0.4 : context.height * 0.5,
              //   repeat: false,
              //   AppAssets.noDataFoundLottie
              // ),

              Insets.gapH45,

              Text(title, style: context.theme.textTheme.titleLarge!.copyWith(fontSize: 20)),

              Insets.gapH10,

              Text(subTitle, style: context.theme.textTheme.bodyMedium),

              Insets.gapH60,
            ],
          ),
        ),

        Positioned(
          bottom: 32,
          left: 16,
          right: 16,
          child: CustomButton.primary(
            onTab: onPressed,
            text: buttonTitle
          ),
        )
      ],
    );
  }
}
