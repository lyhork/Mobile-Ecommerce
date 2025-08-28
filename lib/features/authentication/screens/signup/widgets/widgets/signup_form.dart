import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_app/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:mobile_app/features/authentication/screens/signup/widgets/widgets/terms_conditions_checkbox.dart';

import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/text_strings.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: TTexts.firstName, prefixIcon: Icon(Iconsax.user_copy)),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user_copy)),
              ),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit_copy)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct_copy)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call_copy)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(labelText: TTexts.password, prefixIcon: Icon(Iconsax.password_check_copy), suffixIcon: Icon(Iconsax.eye_slash_copy)),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        TTermsAndConditionCheckbox(),
        const SizedBox(height: TSizes.spaceBtwSections),

        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(TTexts.createAccount)),)
      ],
    ),
    );
  }
}

