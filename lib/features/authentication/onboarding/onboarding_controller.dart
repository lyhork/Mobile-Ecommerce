import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageCotroller = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageCotroller.jumpTo(index);
  }

  void nextPage() {
    if(currentPageIndex.value == 2) {
      final storage = GetStorage();
      storage.write('IsFirstTime', false);
      Get.offAll(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageCotroller.jumpToPage(page);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageCotroller.jumpToPage(2);
  }

  @override
  void onClose() {
    pageCotroller.dispose();
    super.onClose();
  }
}