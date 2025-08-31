import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mobile_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:mobile_app/features/authentication/screens/login/login.dart';
import 'package:mobile_app/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'data/repositories/authentication/authenticaion_repository.dart';
import 'firebase_options.dart';

Future <void> main() async {
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Initialize GetStorage
  await GetStorage.init();
  final storage = GetStorage();
  
  // Check if it's the first time launching the app
  bool isFirstTime = storage.read('IsFirstTime') ?? true;
  
  // Preserve splash screen until we're ready to show the app
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  
  // Set the initial route based on first-time status
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: isFirstTime ? const OnBoardingScreen() : const LoginScreen(),
    ),
  );
  
  // Remove the splash screen
  FlutterNativeSplash.remove();
}
