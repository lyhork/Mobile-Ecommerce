import 'package:flutter/material.dart';
import 'package:mobile_app/common/widgets/login_signup/images/t_circular_image.dart';
import 'package:mobile_app/common/widgets/login_signup/texts/product_price_text.dart';
import 'package:mobile_app/common/widgets/login_signup/texts/product_title_text.dart';
import 'package:mobile_app/common/widgets/login_signup/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:mobile_app/utils/constants/enums.dart';
import 'package:mobile_app/utils/constants/image_strings.dart';
import 'package:mobile_app/utils/helpers/helper_functions.dart';

import '../../../../../../common/widgets/login_signup/images/rounded_container.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withValues(alpha: 0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        const TProductTitleText(title: 'Black Sony Camera'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        Row(
          children: [
            TCircularImage(
              image: TImages.sportIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(title: 'Sony', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
