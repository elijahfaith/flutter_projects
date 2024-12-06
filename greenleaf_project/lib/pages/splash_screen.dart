import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:greenleaf_project/pages/onboarding_home.dart';
// ignore: depend_on_referenced_packages
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          splash: Center( 
              child: Image.asset('assets/images/CoralReef.png') ),
          nextScreen: const OnboardingHome(),
          duration: 5000,
          backgroundColor: Colors.white,
          splashIconSize: 500,
        ),
    );
    
  }
}
