import 'package:flutter/material.dart';
import 'package:islamy/my_them.dart';
import 'package:islamy/onBoarding/onboarding_screen.dart';
import 'package:islamy/sura_details/sura_details.dart';

import 'home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: OnboardingScreen.routeName,
      debugShowCheckedModeBanner: false,
      theme: MyThem.lightMode,
      darkTheme: MyThem.darkMode,
      themeMode: ThemeMode.light,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        OnboardingScreen.routeName: (context) => OnboardingScreen(),
        SuraDetailsScreen.routeName: (context) => const SuraDetailsScreen(),
      },
    );
  }
}
