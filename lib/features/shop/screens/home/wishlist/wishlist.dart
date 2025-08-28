import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_app/common/widgets/login_signup/appbar/appbar.dart';
import 'package:mobile_app/common/widgets/login_signup/icons/t_circular_icon.dart';
import 'package:mobile_app/common/widgets/login_signup/layouts/grid_layout.dart';
import 'package:mobile_app/common/widgets/login_signup/products.cart/product_cards/product_card_vertical.dart';
import 'package:mobile_app/features/shop/screens/home/home/home.dart';

import '../../../../../utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(icon: Iconsax.add_copy, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 6,
                itemBuilder: (_, index) => const TProductCardVertical()
              ),
            ],
          ),
        ),
      ),
    );
  }
}
