import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:laundryapp/view/splash_screen.dart';

import 'constants/app_theme.dart';
import 'controllers/home_view_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent));
  await GetStorage.init();
  Get.lazyPut(() => HomeViewController());
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Welcome",
    defaultTransition: Transition.fade,
    theme: AppThemes.lightTheme,
    darkTheme: AppThemes.darkTheme,
    themeMode: ThemeMode.system,
    home: SplashScreen(),
  ));
}
