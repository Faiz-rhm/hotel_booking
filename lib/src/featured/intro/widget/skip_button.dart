import 'package:flutter/material.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

class SkipButton extends StatelessWidget {
  final Function() onPressed;
  const SkipButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 16,
      top: 40,
      child: TextButton(
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: context.theme.cardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text('Skip', style: context.theme.textTheme.bodySmall!.copyWith(fontSize: 15)))
      )
    );
  }
}
