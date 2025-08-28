import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/common/widgets/login_signup/appbar/appbar.dart';
import 'package:mobile_app/common/widgets/login_signup/appbar/tabbar.dart';
import 'package:mobile_app/common/widgets/login_signup/custom_shapes/containers/search_container.dart';
import 'package:mobile_app/common/widgets/login_signup/layouts/grid_layout.dart';
import 'package:mobile_app/common/widgets/login_signup/products.cart/cart_menu_icon.dart';
import 'package:mobile_app/common/widgets/login_signup/texts/section_heading.dart';
import 'package:mobile_app/features/shop/screens/home/brand/all_brands.dart';
import 'package:mobile_app/features/shop/screens/home/store/widgets/category_tab.dart';
import 'package:mobile_app/utils/constants/sizes.dart';
import 'package:mobile_app/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/login_signup/brands/brand_card.dart';
import '../../../../../utils/constants/colors.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(onPressed: (){}),
          ],
        ),
        body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFuntions.isDarkMode(context) ? TColors.black : TColors.white,
              expandedHeight: 440,

              flexibleSpace: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const TSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    TSectionHeading(title: 'Featured Brands', onPressed: () => Get.to(() => const AllBrandsScreen())),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                    TGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return const TBrandCard(showBorder: false);
                      }
                    ),
                  ],
                ),
              ),
              bottom: const TTabBar(
                tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ],
              ),
            ),
          ];
        },
        body: const TabBarView(
          children: [
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
          ],
        )),
      ),
    );
  }
}




