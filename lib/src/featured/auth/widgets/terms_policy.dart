import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/constants/app_colors.dart';

import '../register_screen.dart';

class TermsAndPolicy extends StatelessWidget {
  const TermsAndPolicy({
    super.key,
    required this.term,
    required this.ref,
  });

  final bool term;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ref.read(termProvider.notifier).state = !term,
      borderRadius: BorderRadius.circular(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Checkbox(
            value: term,
            activeColor: AppColors.primaryColor,
            onChanged: (value) => ref.read(termProvider.notifier).state = value!
          ),

          Expanded(
            child: RichText(
              overflow: TextOverflow.clip,
              text: TextSpan(
              style: context.theme.textTheme.bodyMedium,
              text: 'I agree with the',
              children: [
                TextSpan(
                  style: context.theme.textTheme.bodyMedium!.copyWith(color: AppColors.primaryColor, fontWeight: FontWeight.w600),
                  text:' Terms and Services '
                ),
                const TextSpan(
                  text:'& privacy policy'
                ),
              ]
            )),
          )
        ]
      ),
    );
  }
}
