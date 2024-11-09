import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../helper/form_validation.dart';
import '../../helper/constants/app_style.dart';

import '../shared/widgets/custom_button.dart';
import '../shared/widgets/custom_text_field.dart';

import 'widgets/app_logo.dart';
import 'widgets/or_widget.dart';
import 'widgets/auth_label.dart';
import 'widgets/terms_policy.dart';
import 'widgets/have_account.dart';
import 'widgets/social_widget.dart';

final termProvider = StateProvider<bool>((ref) => false);

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final term = ref.watch(termProvider);
    final nameController = TextEditingController(text: '');
    final emailController = TextEditingController(text: '');
    final passwordController = TextEditingController(text: '');
    final confirmPasswordController = TextEditingController(text: '');

    void submitRegister() {
      if(formKey.currentState!.validate()) {
        formKey.currentState!.save();

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Insets.gapH60,

                const AppLogo(),

                Insets.gapH10,

                const AuthLabel(
                  title: 'Let\'s get started',
                  subTitle: 'Please enter your valid data in order to create an account'
                ),

                context.isPhone ? Insets.gapH30 : Insets.gapH60,

                CustomTextField(
                  controller: nameController,
                  // prefix: Icon(Iconsax.user, color: context.theme.canvasColor,),
                  hintText: 'Full Name',
                  keyboardType: TextInputType.text,
                  validator: FormValidator.nameValidator,
                ),

                Insets.gapH10,

                CustomTextField(
                  controller: emailController,
                  // prefix: Icon(Iconsax.user, color: context.theme.canvasColor,),
                  hintText: 'Email address',
                  keyboardType: TextInputType.text,
                  validator: FormValidator.emailValidator,
                ),

                Insets.gapH10,

                CustomTextField(
                  controller: passwordController,
                  // prefix: Icon(Iconsax.lock, color: context.theme.canvasColor,),
                  hintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  validator: FormValidator.passwordValidator,
                ),

                Insets.gapH10,

                CustomTextField(
                  controller: confirmPasswordController,
                  // prefix: Icon(Iconsax.lock, color: context.theme.canvasColor,),
                  hintText: 'Confirm Password',
                  keyboardType: TextInputType.visiblePassword,
                  // validator: FormValidator.confirmPasswordValidator('confirmPw', 'inputPw')s
                ),

                Insets.gapH15,

                TermsAndPolicy(
                  ref: ref,
                  term: term
                ),

                Insets.gapH15,

                CustomButton.primary(
                  onTab: () => submitRegister(),
                  text: 'Continue'
                ),

                Insets.gapH30,

                const OrWidget(),

                Insets.gapH30,

                const SocialWidget(),

                Insets.gapH30,

                const HaveAccount(),

                Insets.gapH20
              ],
            ),
          ),
        ),
      )
    );
  }
}
