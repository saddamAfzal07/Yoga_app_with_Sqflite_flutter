import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yoga_app/main.dart';
import 'package:yoga_app/pages/breakscreen.dart';

class WorkOutTimerModel with ChangeNotifier {
  WorkOutTimerModel(context) {
    mTimer(context);
  }
  bool isVisibility = false;

  int countDown = 30;
  mTimer(BuildContext context) async {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      countDown--;
      notifyListeners();
      if (countDown == 0) {
        timer.cancel();
        print("Finish Workout");
        Navigator.push(
          navigatorKey.currentContext!,
          MaterialPageRoute(builder: (context) => const BreakScreenDetails()),
        );
      }
    });
  }

  void show() {
    isVisibility = true;
    notifyListeners();
  }

  void hide() {
    isVisibility = false;
    notifyListeners();
  }
}
