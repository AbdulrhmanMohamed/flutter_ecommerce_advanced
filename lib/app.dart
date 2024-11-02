import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/onboarding/onboarding_screen.dart';
import 'package:t_store/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
    themeMode: ThemeMode.light,
    theme: TAppTheme.lightTheme,
    darkTheme: TAppTheme.darkTheme,
    debugShowCheckedModeBanner: false,
    home: OnboardingScreen(),
    );
  }
}