import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/constants/app_colors.dart';

import 'verification_method_screen.dart';

class VerificationCard extends ConsumerWidget {
  const VerificationCard({
    super.key,
    required this.item,
  });

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final language = ref.watch(verificationProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        onTap: () => ref.read(verificationProvider.notifier).state = item,
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        horizontalTitleGap: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: item == language ? AppColors.primaryColor : context.theme.canvasColor)
        ),
        leading: Icon(item['icon'],),
        title: Text(item['option']!, style: context.theme.textTheme.labelLarge,),
        trailing: item == language ? const Padding(
          padding: EdgeInsets.only(right: 16),
          // child: Icon(Iconsax.tick_circle5, color: AppColors.primaryColor,),
        ) : const SizedBox(),
      ),
    );
  }
}
