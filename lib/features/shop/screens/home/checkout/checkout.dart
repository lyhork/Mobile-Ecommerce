import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/common/widgets/login_signup/appbar/appbar.dart';
import 'package:mobile_app/common/widgets/login_signup/images/rounded_container.dart';
import 'package:mobile_app/common/widgets/login_signup/success_screen/success_screen.dart';
import 'package:mobile_app/features/shop/screens/home/cart/widgets/cart_items.dart';
import 'package:mobile_app/features/shop/screens/home/checkout/widgets/billing_address_section.dart';
import 'package:mobile_app/features/shop/screens/home/checkout/widgets/billing_amount_section.dart';
import 'package:mobile_app/features/shop/screens/home/checkout/widgets/billing_payment_section.dart';
import 'package:mobile_app/utils/constants/colors.dart';
import 'package:mobile_app/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/login_signup/products.cart/coupon_widget.dart';
import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TCartItems(showAddRemoveButton: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    TBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => SuccessScreen(image: TImages.deliveredEmailIllustration, title: 'Payment Success!', subTitle: 'Your item will be shipped soon!', onPressed: () => Get.to(() => const NavigationMenu()),)), child: const Text('Checkout \$256.0')),
      ),
    );
  }
}


