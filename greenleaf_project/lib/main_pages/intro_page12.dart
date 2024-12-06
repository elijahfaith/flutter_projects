import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/landingbutton3.dart';
import 'package:greenleaf_project/components/landingbutton4.dart';
import 'package:greenleaf_project/components/login_button.dart';
import 'package:greenleaf_project/main_pages/intro_page13.dart';
import 'package:greenleaf_project/main_pages/pages_intro5.dart';
import 'package:quickalert/quickalert.dart';

class LandingPage12 extends StatefulWidget {
  const LandingPage12({super.key});

  @override
  State<LandingPage12> createState() => _LandingPage12State();
}

class _LandingPage12State extends State<LandingPage12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            const Text(
              'How often do you feel',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            const Text(
              'stressed?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 30),
            LandingButton3(
                text: 'Rarely', color: const Color.fromARGB(255, 213, 213, 213)),
            const SizedBox(height: 10),
            LandingButton4(
                text: 'Several times in a month',
                color: const Color.fromARGB(255, 250, 226, 254)),
            const SizedBox(height: 10),
            LandingButton3(
                text: 'Several times a week',
                color: const Color.fromARGB(255, 213, 213, 213)),
            const SizedBox(height: 10),
            LandingButton3(
                text: 'Almost everyday',
                color: const Color.fromARGB(255, 213, 213, 213)),
            const SizedBox(height: 100),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LandingPage13()));
                },
                child: MyButtons(ontap: () {}, text: 'Continue'))
          ],
        ),
      )),
    );
  }
}
