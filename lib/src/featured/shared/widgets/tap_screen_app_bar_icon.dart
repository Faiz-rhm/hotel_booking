import 'package:flutter/material.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

class TapScreenAppBarIcon extends StatelessWidget {
  final Function() onTap;
  final Icon icon;

  const TapScreenAppBarIcon({
    super.key,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: context.isPhone ? 55 : 60,
        width: context.isPhone ? 40 : 44,
        child: InkWell(
          onTap: onTap,
          child: icon
        ),
      ),
    );
  }
}
