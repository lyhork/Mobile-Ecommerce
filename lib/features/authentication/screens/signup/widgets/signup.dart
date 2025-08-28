import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/common/widgets/login_signup/form_divider.dart';
import 'package:mobile_app/common/widgets/login_signup/social_buttons.dart';
import 'package:mobile_app/features/authentication/screens/signup/widgets/widgets/signup_form.dart';
import 'package:mobile_app/utils/constants/text_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


