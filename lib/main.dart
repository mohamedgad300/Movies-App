import 'package:flutter/material.dart';
import 'package:movies_app/screens/introFive.dart';
import 'package:movies_app/screens/introFour.dart';
import 'package:movies_app/screens/introOne.dart';
import 'package:movies_app/screens/introSix.dart';
import 'package:movies_app/screens/introThree.dart';
import 'package:movies_app/screens/introTwo.dart';
import 'package:movies_app/screens/splash.dart';

void main() {
  runApp(const MoviesApp());
}

// تعريف جميع الـ Routes في متغير مستقل
final Map<String, Widget Function(BuildContext)> appRoutes = {
  "IntroOne": (context) => const Introone(),
  "IntroTwo": (context) => const Introtwo(),
  "IntroThree": (context) => const Introthree(),
  "IntroFour": (context) => const Introfour(),
  "IntroFive": (context) => const Introfive(),
  "IntroSix": (context) => const Introsix(),
};

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff121312),
      ),
      home: const Splash(),
      routes: appRoutes, // استخدام المتغير الذي يحتوي على الـ Routes
    );
  }
}
