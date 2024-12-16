import 'package:flutter/material.dart';
import 'package:islamy/onBoarding/onboarding_screen.dart';
import 'package:islamy/sura_details/sura_details.dart';

import 'home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: OnboardingScreen.routeName,
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        OnboardingScreen.routeName: (context) => OnboardingScreen(),
        SuraDetailsScreen.routeName: (context) =>  SuraDetailsScreen(),
      },
    );
  }
}
