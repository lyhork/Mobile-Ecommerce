import 'package:flutter/material.dart';
import 'package:mobile_app/common/widgets/login_signup/appbar/appbar.dart';
import 'package:mobile_app/features/shop/screens/home/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:mobile_app/features/shop/screens/home/product_reviews/widgets/user_review_card.dart';

import '../../../../../common/widgets/login_signup/products.cart/ratings/rating_indicator.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(height: TSizes.spaceBtwItems),

              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 3.5),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}






