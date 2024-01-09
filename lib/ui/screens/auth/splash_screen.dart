import 'package:ecommerce/ui/utility/assets_path.dart';
import 'package:ecommerce/ui/widgets/Applogo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'verify_email_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getToNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            AppLogo(width: 150, height: 150,),
            Spacer(),
            CircularProgressIndicator(),
            SizedBox(
              height: 18,
            ),
            Text(
              'version 1.0',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}

void getToNextScreen() async {
  await Future.delayed(const Duration(seconds: 2));
  Get.to(const VerifyEmailScreen());
}
