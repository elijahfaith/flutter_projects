import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:mobile_app/screens/onboarding_page.dart';
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
              child:  Text(
                "VikeMall",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              )),
          nextScreen:  OnboardingPage(),
          duration: 5000,
          backgroundColor: Colors.white,
          splashIconSize: 500,
        ),
    );
    
  }
}
