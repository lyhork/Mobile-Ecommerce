import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:mobile_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:mobile_app/utils/helpers/helper_functions.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              TLoginHeader(dark: dark),

              TLoginForm(),

              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}








