import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/form_validation.dart';
import '../../../helper/constants/app_style.dart';
import '../../../helper/constants/app_colors.dart';

import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/custom_text_field.dart';

import '../forget_password_screen.dart';

class NewPasswordWidget extends ConsumerWidget {
  const NewPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final passwordController = TextEditingController(text: '');
    final confirmPasswordController = TextEditingController(text: '');

    void submitNewPassword() {
      if(formKey.currentState!.validate()) {
        formKey.currentState!.save();

        context.focusScope.unfocus();

        final pageController = ref.watch(pageControllerProvider);
        pageController.jumpToPage(4);
      }
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Insets.gapH15,

            Text('Set new password', style: context.theme.textTheme.headlineSmall, textAlign: TextAlign.left,),

            Text('Your new password must be different from previously used passwords.', style: context.theme.textTheme.bodyMedium!.copyWith(color: AppColors.brandGray400), textAlign: TextAlign.left,),

            Insets.gapH30,

            CustomTextField(
              controller: passwordController,
              // prefix: Icon(Iconsax.lock, color: context.theme.canvasColor,),
              hintText: 'New Password',
              keyboardType: TextInputType.visiblePassword,
              validator: FormValidator.passwordValidator,
            ),

            Insets.gapH15,

            CustomTextField(
              controller: confirmPasswordController,
              // prefix: Icon(Iconsax.lock, color: context.theme.canvasColor,),
              hintText: 'Confirm Password',
              keyboardType: TextInputType.visiblePassword,
              // validator: FormValidator.confirmPasswordValidator(confirmPw, inputPw),
            ),

            Insets.gapH30,

            CustomButton.primary(
              onTab: () => submitNewPassword(),
              text: 'Change Password'
            ),
          ],
        ),
      ),
    );
  }
}
