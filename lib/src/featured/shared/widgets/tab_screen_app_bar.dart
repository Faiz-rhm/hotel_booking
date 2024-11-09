import 'package:flutter/material.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/constants/app_style.dart';

class TapScreenAppBar extends StatelessWidget {
  final String title, subTitle;

  const TapScreenAppBar({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(subTitle, style: context.theme.textTheme.bodySmall!.copyWith(
            fontSize: context.isPhone ? 12 : 14
          )),

          Insets.gapH5,

          Text(title, style: context.theme.textTheme.titleLarge),
        ],
      ),
    );
  }
}
