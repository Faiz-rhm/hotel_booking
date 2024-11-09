import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../route/routes.dart';

import '../../../helper/constants/app_colors.dart';

import '../../shared/widgets/custom_text_button.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({
    super.key,
    required this.ref,
    required this.rememberMe,
  });

  final WidgetRef ref;
  final ValueNotifier<bool> rememberMe;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ValueListenableBuilder(
          valueListenable: rememberMe,
            builder: (context, _, __) {
              return SwitchListTile.adaptive(
                activeColor: Platform.isAndroid ? Colors.white : AppColors.primaryColor,
                title: Text('Remember me', style: context.theme.textTheme.bodyMedium!.copyWith(

                )),
                value: rememberMe.value,
                onChanged: (value) => rememberMe.value = value,
                controlAffinity: ListTileControlAffinity.leading,
              );
            }
          ),
        ),

        CustomTextButton(
          onPressed: () => context.pushNamed(Routes.forgotPasswordScreenRoute),
          child: Text('Forgot Password', style: context.theme.textTheme.bodySmall!.copyWith(color: AppColors.primaryColor)),
        ),
      ],
    );
  }
}
