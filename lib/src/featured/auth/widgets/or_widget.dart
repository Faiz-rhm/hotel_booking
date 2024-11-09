import 'package:flutter/material.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(child: Divider()),

        SizedBox(
          width: 50,
          child: Center(child: Text('Or', style: context.theme.textTheme.bodyLarge))),
        const Expanded(child: Divider()),
      ],
    );
  }
}
