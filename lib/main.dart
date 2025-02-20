import 'package:flutter/material.dart';
import 'package:movies_app/core/Auth_Screen/repassword_screen.dart';
import 'package:movies_app/core/Auth_Screen/signin_screen.dart';
import 'package:movies_app/core/provider/my%20provider.dart';
import 'package:movies_app/models/film_model.dart'; // إضافة هذا السطر
import 'package:movies_app/screens/Film_details.dart'; // إضافة هذا السطر
import 'package:movies_app/screens/Home_screen/home_screen.dart';
import 'package:movies_app/screens/onboarding/introFive.dart';
import 'package:movies_app/screens/onboarding/introFour.dart';
import 'package:movies_app/screens/onboarding/introOne.dart';
import 'package:movies_app/screens/onboarding/introSix.dart';
import 'package:movies_app/screens/onboarding/introThree.dart';
import 'package:movies_app/screens/onboarding/introTwo.dart';
import 'package:movies_app/screens/onboarding/splash.dart';
import 'package:provider/provider.dart';

import 'core/Auth_Screen/Login_screen.dart';

// تعريف جميع الـ Routes في متغير مستقل
final Map<String, Widget Function(BuildContext)> appRoutes = {
  "IntroOne": (context) => const Introone(),
  "IntroTwo": (context) => const Introtwo(),
  "IntroThree": (context) => const Introthree(),
  "IntroFour": (context) => const Introfour(),
  "IntroFive": (context) => const Introfive(),
  "IntroSix": (context) => const Introsix(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  rePassword.routeName : (context) => rePassword(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  signin.routeName: (context) => signin(),
  FilmDetails.routeName: (context) => FilmDetails(
    film: ModalRoute.of(context)!.settings.arguments as FilmModel, // هنا تمرير الـ FilmModel
  ),
};

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xff121312),
        ),
        home: const Splash(),
        routes: appRoutes,
      ),
    );
  }
}
