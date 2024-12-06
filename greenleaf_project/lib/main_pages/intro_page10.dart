import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/landingbutton3.dart';
import 'package:greenleaf_project/components/landingbutton4.dart';
import 'package:greenleaf_project/components/login_button.dart';
import 'package:greenleaf_project/main_pages/intro_page11.dart';
import 'package:greenleaf_project/main_pages/pages_intro5.dart';
import 'package:quickalert/quickalert.dart';

class LandingPage10 extends StatefulWidget {
  const LandingPage10({super.key});

  @override
  State<LandingPage10> createState() => _LandingPage10State();
}

class _LandingPage10State extends State<LandingPage10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(),
          body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            const Text(
              'Have you given birth before?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 50),
            LandingButton4(
                text: 'Yes', color: const Color.fromARGB(255, 250, 226, 254)),
            const SizedBox(height: 20),
            LandingButton3(
                text: 'No', color: const Color.fromARGB(255, 213, 213, 213)),
            const SizedBox(height: 320),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LandingPage11()));
                },
                child: MyButtons(ontap: () {}, text: 'Continue'))
          ],
        ),
      ));
  }
}
