import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga_app/pages/breakscreen.dart';
import 'package:yoga_app/pages/finish_screen.dart';
import 'package:yoga_app/pages/homepage.dart';
import 'package:yoga_app/provider_services/break_screen_timer.dart';
import 'package:yoga_app/provider_services/timer.dart';
import 'package:yoga_app/provider_services/work_out_timer.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TimerModel(context)),
        ChangeNotifierProvider(create: (_) => BreakScreenTimer(context)),
        ChangeNotifierProvider(create: (_) => WorkOutTimerModel(context)),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
            // FinishScreen(),
            // BreakScreenDetails(),
            const HomePage(),
      ),
    );
  }
}
