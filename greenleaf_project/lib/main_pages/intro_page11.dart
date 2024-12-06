import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/landingbutton3.dart';
import 'package:greenleaf_project/components/landingbutton4.dart';
import 'package:greenleaf_project/components/login_button.dart';
import 'package:greenleaf_project/main_pages/intro_page12.dart';
import 'package:greenleaf_project/main_pages/pages_intro5.dart';
import 'package:quickalert/quickalert.dart';

class LandingPage11 extends StatefulWidget {
  const LandingPage11({super.key});

  @override
  State<LandingPage11> createState() => _LandingPage11State();
}

class _LandingPage11State extends State<LandingPage11> {
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
              'What is your Activity Level?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 50),
            LandingButton4(
                text: 'Little or no exercise',
                color: const Color.fromARGB(255, 250, 226, 254)),
            const SizedBox(height: 10),
            LandingButton3(
                text: 'Physical activity job',
                color: const Color.fromARGB(255, 213, 213, 213)),
            const SizedBox(height: 10),
            LandingButton3(
                text: 'Exercise 2-3 weeks',
                color: const Color.fromARGB(255, 213, 213, 213)),
            const SizedBox(height: 10),
            LandingButton3(
                text: 'Exercise up to 3 weeks',
                color: const Color.fromARGB(255, 213, 213, 213)),
            const SizedBox(height: 100),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LandingPage12()));
                },
                child: MyButtons(ontap: () {}, text: 'Continue'))
          ],
        ),
      )),
    );
  }
}
