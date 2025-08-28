import 'package:flutter/material.dart';
import 'package:mobile_app/common/widgets/login_signup/appbar/appbar.dart';
import 'package:mobile_app/features/shop/screens/home/order/widgets/orders_list.dart';

import '../../../../../utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('My Orders', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        child: TOrderListItems(),
      ),
    );
  }
}
