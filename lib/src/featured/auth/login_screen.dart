import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../route/routes.dart';

import '../../helper/form_validation.dart';
import '../../helper/constants/app_style.dart';

import '../shared/widgets/custom_button.dart';
import '../shared/widgets/custom_text_field.dart';

import 'widgets/app_logo.dart';
import 'widgets/or_widget.dart';
import 'widgets/auth_label.dart';
import 'widgets/remember_me.dart';
import 'widgets/social_widget.dart';
import 'widgets/do_not_have_account.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context,) {
    final rememberMe = ValueNotifier<bool>(false);

    void submitLogin() {
      if(formKey.currentState!.validate()) {
        formKey.currentState!.save();
        context.pushReplacementNamed(Routes.tabScreen);
      }
    }

    return Scaffold(
      body: GestureDetector(
        onTap: () => context.focusScope.unfocus(),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: formKey,
            child: SizedBox(
              height: context.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Insets.gapH60,

                  const AppLogo(),

                  Insets.gapH10,

                  const AuthLabel(
                    title: 'Welcome back!',
                    subTitle: 'Sign in to your account'
                  ),

                  context.isPhone ? Insets.gapH30 : Insets.gapH60,

                  const CustomTextField(
                    // prefix: Icon(IconlyLight.message, color: context.theme.canvasColor,),
                    hintText: 'Email address',
                    keyboardType: TextInputType.text,
                    validator: FormValidator.emailValidator,
                  ),

                  Insets.gapH3,

                  const CustomTextField(
                    // prefix: Icon(Iconsax.lock, color: context.theme.canvasColor,),
                    hintText: 'Password',
                    keyboardType: TextInputType.visiblePassword,
                    validator: FormValidator.passwordValidator,
                  ),

                  Insets.gapH3,

                  RememberMe(
                    ref: ref,
                    rememberMe: rememberMe
                  ),

                  Insets.gapH10,

                  CustomButton.primary(
                    onTab: () => submitLogin(),
                    text: 'Login'
                  ),

                  Insets.gapH30,

                  const OrWidget(),

                  Insets.gapH30,

                  const SocialWidget(),

                  Insets.gapH30,

                  const DoNotHaveAccount(),

                  Insets.gapH20
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}


