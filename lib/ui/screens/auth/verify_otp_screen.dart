import 'package:ecommerce/controllers/verify_otp_controller.dart';
import 'package:ecommerce/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../widgets/Applogo.dart';
import 'complete_profile_screen.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  void initState() {
    super.initState();
    Get.find<VerifyOtpController>().resendCodeTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(30),
            child:
                GetBuilder<VerifyOtpController>(builder: (verifyOtpController) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  AppLogo(),
                  SizedBox(height: 8),
                  Text(
                    'Enter OTP Code',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'A 4 Digit OTP code will be sent',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: 20),
                  PinCodeTextField(
                    textInputAction: TextInputAction.go,
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        selectedColor: Colors.blueGrey,
                        selectedFillColor: AppColors.primaryColor,
                        inactiveColor: AppColors.primaryColor),
                    animationDuration: Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    enableActiveFill: false,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    appContext: context,
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(CompleteProfileScreen());
                          },
                          child: Text('Next'))),
                  const SizedBox(
                    height: 24,
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      children: [
                        TextSpan(text: 'This code will expire // 120 second korte hobe'),

                        TextSpan(
                          text: '${verifyOtpController.timerDuration}s',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  verifyOtpController.showNextButton
                      ? TextButton(
                          onPressed: () {
                            verifyOtpController.timerDuration = 10;
                            verifyOtpController.showNextButton = false;
                            verifyOtpController.resendCodeTimer();
                          },
                          child: Text(
                            'Resend Code',
                            style: TextStyle(color: Colors.grey.shade600),
                          ))
                      : const Text(''),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
