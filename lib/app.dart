import 'package:ecommerce/controllers/verify_otp_controller.dart';
import 'package:ecommerce/ui/screens/main_bottom_nav.dart';
import 'package:ecommerce/ui/utility/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CraftyBay extends StatelessWidget {
  static GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: navigationKey,
      initialBinding: ControllerBinder(),
      home: MainBottomNav(),
      theme: AppThemeData.lightThemeData,
    );
  }
}

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(VerifyOtpController());
  }
}
