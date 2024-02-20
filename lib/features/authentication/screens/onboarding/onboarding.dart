import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal PageView
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              // Page 1
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                description: TTexts.onBoardingSubTitle1,
              ),
              // Page 2
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                description: TTexts.onBoardingSubTitle2,
              ),
              // Page 3
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                description: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation
          const OnBoardingDotNavigation(),

          // Next Button
          const OnBoardingNext(),
        ],
      ),
    );
  }
}
