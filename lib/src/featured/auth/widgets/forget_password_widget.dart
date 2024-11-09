import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/form_validation.dart';
import '../../../helper/constants/app_style.dart';
import '../../../helper/constants/app_colors.dart';

import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/custom_text_field.dart';

import '../forget_password_screen.dart';


class ForgotPasswordWidget extends ConsumerWidget {
  const ForgotPasswordWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final passwordController = TextEditingController(text: '');

    void submitEmail() {
      if(formKey.currentState!.validate()) {
        formKey.currentState!.save();

        context.focusScope.unfocus();

        final pageController = ref.watch(pageControllerProvider);
        pageController.jumpToPage(1);
      }
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Insets.gapH15,

            Text('Recover Password', style: context.theme.textTheme.headlineSmall, textAlign: TextAlign.left,),

            Insets.gapH5,

            Text('Enter your E-mail address to recover your password.', style: context.theme.textTheme.bodyMedium!.copyWith(color: AppColors.brandGray400), textAlign: TextAlign.left,),

            Insets.gapH30,

            CustomTextField(
              controller: passwordController,
              // prefix: Icon(IconlyLight.message, color: context.theme.canvasColor,),
              hintText: 'Email address',
              keyboardType: TextInputType.text,
              validator: FormValidator.emailValidator,
            ),

            Insets.gapH30,

            CustomButton.primary(
              onTab: () => submitEmail(),
              text: 'Next'
            ),
          ],
        ),
      ),
    );
  }
}
