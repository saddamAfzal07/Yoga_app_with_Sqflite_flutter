import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga_app/provider_services/timer.dart';

class AreUReady extends StatelessWidget {
  const AreUReady({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 270,
          ),
          const Text(
            "Are U READY?",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Consumer<TimerModel>(
            builder: (context, myModel, child) {
              return Text(
                "${myModel.countDown}",
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                ),
              );
            },
          ),
          const Spacer(),
          const Divider(
            thickness: 2,
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Next: Muscles Yoga",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
