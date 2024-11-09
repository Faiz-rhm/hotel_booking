import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_booking/src/featured/auth/widgets/do_not_have_account.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../helper/constants/app_style.dart';

import '../shared/widgets/custom_button.dart';

import 'data/intro_data.dart';

import 'widget/onboarding_image.dart';
import 'widget/intro_description.dart';
import 'widget/onboarding_animated_container.dart';

final introPageProvider = StateProvider((ref) => 0);

class OnboardingScreen extends ConsumerWidget {
  OnboardingScreen({super.key});

  final PageController pageController = PageController(
    initialPage: 0
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final introPage = ref.watch(introPageProvider);

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: onboardingData.length,
            onPageChanged: (int page) => ref.read(introPageProvider.notifier).state = page,
            itemBuilder: (context, index) {
              final item = onboardingData[index];

              return OnboardingImage(image: item.image);
            }
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(bottom: 24),
              height: context.height * 0.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0x00110C1D),
                    Color(0xFF110C1D),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x88110C1D), // Shadow color with some transparency
                    blurRadius: 20.0,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 IntroDescription(item: onboardingData[introPage]),

                  Insets.gapH45,

                  if (introPage != 2) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(onboardingData.length, (index) {
                          return OnboardingAnimatedContainer(
                          index: index,
                            introPage: introPage
                          );
                        }),
                      ],
                    ),

                    Insets.gapH45,
                  ],

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton.primary(
                          onTab: () => _gotoPage(introPage + 1),
                          text: 'Continue',
                        ),

                        if (introPage == 2) const DoNotHaveAccount()
                      ],
                    ),
                  ),
                ],
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
