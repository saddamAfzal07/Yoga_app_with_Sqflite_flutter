import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yoga_app/main.dart';
import 'package:yoga_app/pages/workout_details.dart';

class TimerModel with ChangeNotifier {
  TimerModel(context) {
    mTimer(context);
  }
  int countDown = 5;
  mTimer(BuildContext context) async {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      countDown--;
      notifyListeners();
      if (countDown == 0) {
        timer.cancel();
        print("Start Your YOGA");

        Navigator.push(
          navigatorKey.currentContext!,
          MaterialPageRoute(builder: (context) => const WorkOutDetails()),
        );
      }
    });
  }
}
