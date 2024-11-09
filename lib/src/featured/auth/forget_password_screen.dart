import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widgets/otp_widget.dart';
import 'widgets/success_widget.dart';
import 'widgets/new_password_widget.dart';
import 'widgets/forget_password_widget.dart';
import 'widgets/verification_method_screen.dart';

final pageControllerProvider = StateProvider.autoDispose<PageController>((ref) => PageController(
  initialPage: 0
));

class ForgetPasswordScreen extends ConsumerWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageControllerProvider);

    return Scaffold(
      appBar: AppBar(
        // leading: AppBarIcon(
        //   onTab: () => context.pop(),
        //   icon: const Icon(IconlyLight.arrow_left_2)
        // ),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          ForgotPasswordWidget(),

          VerificationMethodScreen(),

          OTPWidget(),

          NewPasswordWidget(),

          SuccessWidget(
            title: 'Login',
            subTitle: 'Your password has been changed successfully',
          )
        ],
      ),
    );
  }
}
