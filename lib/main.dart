import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX package
import 'modules/onboarding/onboarding_page.dart'; // Import OnboardingPage from modules

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Use GetMaterialApp for GetX functionality
      title: 'Flutter App with GetX & SF Pro',
      theme: ThemeData(
        // Set the default font family for the app
        fontFamily: 'SFProText',
      ),
      home: OnboardingPage(), // Set OnboardingPage as the home
    );
  }
}
