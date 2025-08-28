import 'package:flutter/material.dart';
import 'package:mobile_app/common/widgets/login_signup/layouts/grid_layout.dart';
import 'package:mobile_app/common/widgets/login_signup/products.cart/product_cards/product_card_vertical.dart';
import 'package:mobile_app/common/widgets/login_signup/texts/section_heading.dart';

import '../../../../../../common/widgets/login_signup/brands/brand_show_case.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            const TBrandShowcase(images: [TImages.productImage2, TImages.productImage1, TImages.productImage3]),
            const TBrandShowcase(images: [TImages.productImage2, TImages.productImage1, TImages.productImage3]),
            const SizedBox(height: TSizes.spaceBtwItems),

            TSectionHeading(title: 'You might like', onPressed: () {}),
            const SizedBox(height: TSizes.spaceBtwItems),

            TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical()),
          ],
        )),
      ],
    );
  }
}
