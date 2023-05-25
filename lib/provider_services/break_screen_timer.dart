import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yoga_app/main.dart';
import 'package:yoga_app/pages/workout_details.dart';

class BreakScreenTimer with ChangeNotifier {
  BreakScreenTimer(context) {
    mTimer(context);
  }
  Timer? _timer;
  int countDown = 20;
  mTimer(BuildContext context) async {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
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

  void addCountDown(context) {
    _timer!.cancel();
    print("add count down");
    countDown = add(countDown);
    print("add count down ==>>>> $countDown");

    notifyListeners();
    mTimer(context);
  }

  int add(int number) {
    return number + 20;
  }
}
