import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../config/route/routes.dart';

import '../../helper/constants/app_colors.dart';


import 'widget/skip_button.dart';
import 'widget/intro_description.dart';

final introPageProvider = StateProvider((ref) => 0);

class IntroScreen extends ConsumerWidget {
  IntroScreen({super.key});

  final PageController pageController = PageController(
    initialPage: 0
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final introPage = ref.watch(introPageProvider);

    return Scaffold(
      body: Stack(
        children: [
          // PageView.builder(
          //   controller: pageController,
          //   itemCount: introScreen.length,
          //   onPageChanged: (int page) {
          //     ref.read(introPageProvider.notifier).state = page;
          //   },
          //   itemBuilder: (context, index) {
          //     final item = introScreen[index];

          //     return Stack(
          //       children: [
          //         Column(
          //           children: [
          //             // OnboardingImage(image: item.image),
          //             IntroDescription(item: item),
          //           ],
          //         ),

          //         SkipButton(onPressed: () => context.pushReplacementNamed(Routes.notificationIntroScreenRoute),),
          //       ],
          //     );
          //   }
          // ),

          Positioned(
            top: context.height * 0.62,
            right: 16,
            left: 16,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ...List.generate(introScreen.length, (index) {
                //   return OnboardingAnimatedContainer(
                //     index: index,
                //     introPage: introPage
                //   );
                // }),
              ],
            ),
          ),

          Positioned(
            bottom: 32,
            right: context.width * 0.3,
            left: context.width * 0.3,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(50)
              ),

            ),
          ),
        ],
      ),
    );
  }

  void _gotoPage(index) {
    pageController.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
  }
}
