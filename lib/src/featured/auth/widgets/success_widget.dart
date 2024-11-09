import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/constants/app_style.dart';

import '../../shared/widgets/custom_button.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Lottie.asset(
              //   repeat: false,
              //   reverse: true,
              //   AppAssets.markDoneLottie
              // ),

              Insets.gapH60,

              Text(subTitle,
                style: context.theme.textTheme.headlineSmall,
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
            onTab: () => context.pop(),
            text:  title
          ),
        )
      ],
    );
  }
}
