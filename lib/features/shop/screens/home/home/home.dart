import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/features/shop/screens/home/all_products/all_products.dart';
import 'package:mobile_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:mobile_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:mobile_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:mobile_app/utils/constants/image_strings.dart';
import '../../../../../common/widgets/login_signup/custom_shapes/containers/primary_header_container.dart';
import '../../../../../common/widgets/login_signup/custom_shapes/containers/search_container.dart';
import '../../../../../common/widgets/login_signup/layouts/grid_layout.dart';
import '../../../../../common/widgets/login_signup/products.cart/product_cards/product_card_vertical.dart';
import '../../../../../common/widgets/login_signup/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  const TSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        THomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner1, TImages.promoBanner1]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  TSectionHeading(title: 'Popular Product', onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const TProductCardVertical()),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}





















