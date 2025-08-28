import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/features/authentication/onboarding/onboarding_controller.dart';
import 'package:mobile_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:mobile_app/features/authentication/screens/onboarding/widgets/onboarding_next_botton.dart';
import 'package:mobile_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:mobile_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:mobile_app/utils/constants/image_strings.dart';
import 'package:mobile_app/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageCotroller,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          
          OnBoardingSkip(),

          OnBoardingDotNavigation(),

          OnBoardingNextButton()
        ],
      ),
    );
  }
}








