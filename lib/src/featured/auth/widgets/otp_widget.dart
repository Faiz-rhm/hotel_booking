import 'package:pinput/pinput.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/constants/app_colors.dart';
import '../../../helper/constants/app_style.dart';

import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/custom_text_button.dart';

import '../forget_password_screen.dart';

class OTPWidget extends ConsumerWidget {
  const OTPWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final otpTextController = TextEditingController(text: '');
    final focusNode = FocusNode();
    final formKey = GlobalKey<FormState>();

    void submitOTP() {
      if(formKey.currentState!.validate()) {
        formKey.currentState!.save();

        context.focusScope.unfocus();

        final pageController = ref.watch(pageControllerProvider);
        pageController.jumpToPage(3);
      }
    }

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: context.theme.cardColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Verification Code', style: context.theme.textTheme.headlineSmall, textAlign: TextAlign.left,),

                Text('We have send the code verification to', style: context.theme.textTheme.bodyMedium!.copyWith(), textAlign: TextAlign.left,),

                Row(
                  children: [
                    Text('+19******1232', style: context.theme.textTheme.bodyLarge!.copyWith(), textAlign: TextAlign.left,),

                    Insets.gapW15,

                    CustomTextButton(
                      child: Text('Change phone number?', style: context.theme.textTheme.bodyLarge!.copyWith(color: AppColors.primaryColor, fontWeight: FontWeight.w600), textAlign: TextAlign.left,),
                      onPressed: () {}
                    )
                  ],
                ),

                Insets.gapH10,

                Pinput(
                  controller: otpTextController,
                  focusNode: focusNode,
                  // androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
                  // listenForMultipleSmsOnAndroid: true,
                  defaultPinTheme: defaultPinTheme,
                  separatorBuilder: (index) => const SizedBox(width: 32),
                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                  onCompleted: (pin) {
                    debugPrint('onCompleted: $pin');
                  },
                  onChanged: (value) {
                    debugPrint('onChanged: $value');
                  },
                ),

                Insets.gapH20,

                Align(
                  alignment: Alignment.center,
                  child: RichText(text: const TextSpan(
                    text: 'Resend code after ',
                    style: TextStyle( fontSize: 15, letterSpacing: 1),
                    children: [
                      TextSpan(
                        text: ' 40.00',
                        style: TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.w500, fontSize: 15, letterSpacing: 1)
                      )
                    ]
                  )),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton.secondary(
                  onTab: () {},
                  text: 'Resend',
                ),

                CustomButton.primary(
                  onTab: () => submitOTP(),
                  text: 'Confirm'
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
