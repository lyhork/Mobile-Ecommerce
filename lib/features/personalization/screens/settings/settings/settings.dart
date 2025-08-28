import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_app/common/widgets/login_signup/appbar/appbar.dart';
import 'package:mobile_app/common/widgets/login_signup/custom_shapes/containers/primary_header_container.dart';
import 'package:mobile_app/common/widgets/login_signup/list_tiles/settings_menu_tile.dart';
import 'package:mobile_app/common/widgets/login_signup/texts/section_heading.dart';
import 'package:mobile_app/features/personalization/screens/settings/address/address.dart';
import 'package:mobile_app/features/personalization/screens/settings/profile/profile.dart';
import 'package:mobile_app/features/shop/screens/home/order/order.dart';

import '../../../../../common/widgets/login_signup/list_tiles/user_profile_tile.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../shop/screens/home/cart/cart.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white))),

                  TUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TSectionHeading(title: 'Account Settings', showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                    icon: Iconsax.safe_home_copy,
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart_copy,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                    onTap: () => Get.to(() => const CartScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick_copy,
                    title: 'My Orders',
                    subTitle: 'In-process and Completed Orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bank_copy,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape_copy,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification_copy,
                    title: 'Notification',
                    subTitle: 'Set any kind of notification message',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_card_copy,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                  ),

                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(title: 'App Settings', showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TSettingsMenuTile(icon: Iconsax.document_upload_copy, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase'),
                  TSettingsMenuTile(
                    icon: Iconsax.location_copy,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user_copy,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all user',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image_copy,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


