import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/common/widgets/login_signup/appbar/appbar.dart';
import 'package:mobile_app/common/widgets/login_signup/brands/brand_card.dart';
import 'package:mobile_app/common/widgets/login_signup/layouts/grid_layout.dart';
import 'package:mobile_app/common/widgets/login_signup/products.cart/sortable/sortable_products.dart';
import 'package:mobile_app/common/widgets/login_signup/texts/section_heading.dart';
import 'package:mobile_app/features/shop/screens/home/brand/brand_products.dart';

import '../../../../../utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TSectionHeading(title: 'Brands'),
              const SizedBox(height: TSizes.spaceBtwItems),

              TGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80 ,
                  itemBuilder: (context, index) => TBrandCard(showBorder: true, onTap: () => Get.to(() => const BrandProducts()),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
