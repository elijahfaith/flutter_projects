import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/login_button.dart';
import 'package:greenleaf_project/pages/Screen1.dart';
import 'package:greenleaf_project/pages/screen2.dart';
import 'package:greenleaf_project/pages/screen3.dart';
import 'package:greenleaf_project/pages/screen4.dart';
import 'package:greenleaf_project/pages/welcome_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingHome extends StatefulWidget {
  const OnboardingHome({super.key});

  @override
  @override
  State<OnboardingHome> createState() => _OnboardingHomeState();
}

PageController pageController = PageController();

class _OnboardingHomeState extends State<OnboardingHome> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: const [
              Screen1(),
              Screen2(),
              Screen3(),
              Screen4(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.3),
            child: SmoothPageIndicator(
              controller: pageController,
              count: 4,
              effect: const WormEffect(
                  spacing: 8.0,
                  dotWidth: 14.0,
                  dotHeight: 14.0,
                  strokeWidth: 1.5,
                  dotColor: Color.fromARGB(255, 215, 214, 214),
                  activeDotColor: Colors.grey),
            ),
          ),
          const SizedBox(height: 120),
        ],
      ),
    );
  }
}
