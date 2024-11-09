import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/constants/app_style.dart';
import '../../../helper/constants/app_assets.dart';
import '../../../helper/constants/app_colors.dart';

import '../../shared/widgets/custom_button.dart';

import '../forget_password_screen.dart';

import 'verification_card.dart';

List<Map<String, dynamic>> verificationList = [
  // {
  //   'icon': IconlyLight.call,
  //   'option': '+19******1232'
  // },
  // {
  //   'icon': IconlyLight.message,
  //   'option': 'faiz*****@gmail.com'
  // },
];

final verificationProvider = StateProvider<Map<String, dynamic>>((ref) => verificationList[0]);

class VerificationMethodScreen extends ConsumerWidget {
  const VerificationMethodScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.height * 0.4,
                  child: Image.asset(AppAssets.lock)),

                Text('Chose verification method', style: context.theme.textTheme.headlineSmall, textAlign: TextAlign.left,),

                Insets.gapH5,

                Text('We\'ll send you a verification code to reset your password', style: context.theme.textTheme.bodyMedium!.copyWith(), textAlign: TextAlign.left,),

                Insets.gapH30,

                ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: verificationList.length,
                  itemBuilder: (context, index) {
                    final item = verificationList[index];

                    return VerificationCard(item: item);
                  },
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 32,
            left: 0,
            right: 0,
            child: CustomButton.primary(
              onTab: () {
                final pageController = ref.watch(pageControllerProvider);
                pageController.jumpToPage(2);
              },
              text: 'Next'
            ),
          ),
        ],
      ),
    );
  }
}
