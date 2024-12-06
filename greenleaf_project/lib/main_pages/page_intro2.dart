import 'package:flutter/material.dart';

import 'package:greenleaf_project/components/landingbuttons.dart';

class LandingPage2 extends StatefulWidget {
  const LandingPage2({super.key});

  @override
  State<LandingPage2> createState() => _LandingPage2State();
}

class _LandingPage2State extends State<LandingPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'How Can we Help you?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 40,
            ),
            LandingButtons(
              text: 'Track Period',
              color: const Color.fromARGB(255, 250, 226, 254),
              image: 'assets/images/landingicon1.png',
            ),
            const SizedBox(height: 20),
            LandingButtons(
                text: 'Track Diet',
                color: const Color.fromARGB(255, 249, 241, 170),
                image: 'assets/images/landingicon2.png'),
            const SizedBox(height: 20),
            LandingButtons(
                text: 'Track Exercise',
                color: const Color.fromARGB(255, 250, 226, 254),
                image: 'assets/images/landingicon3.png'),
            const SizedBox(height: 20),
            LandingButtons(
                text: 'Track Well-being',
                color: const Color.fromARGB(255, 190, 197, 254),
                image: 'assets/images/landingicon4.png')
          ],
        ),
      )),
    );
  }
}
