import 'package:flutter/material.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/constants/app_style.dart';

import 'custom_button.dart';

class NoInternetConnection extends StatelessWidget {
  final Function() onPressed;

  const NoInternetConnection({
    super.key,
    required this.onPressed,
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
              //   AppAssets.noInternetConnectionLottie
              // ),

              Insets.gapH45,

              Text('No Internet Connection!', style: context.theme.textTheme.titleLarge!.copyWith(
                fontSize: 20),
                textAlign: TextAlign.center,
              ),


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
            text: 'Retry'
          ),
        )
      ],
    );
  }
}
