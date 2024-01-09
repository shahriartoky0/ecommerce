import 'dart:async';

import 'package:get/get.dart';

class VerifyOtpController extends GetxController{
  int timerDuration = 10;
  bool showNextButton = false;
  resendCodeTimer() {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      timerDuration--;

      // Check if the timer has reached 0
      if (timerDuration <= 0) {
        timer.cancel(); // Stop the timer
        showNextButton = true;
      }
      update();
    });
  }
}