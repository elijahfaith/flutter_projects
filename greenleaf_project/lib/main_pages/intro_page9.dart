import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/login_button.dart';
import 'package:greenleaf_project/main_pages/intro_page10.dart';
import 'package:greenleaf_project/main_pages/pages_intro5.dart';
import 'package:quickalert/quickalert.dart';

class LandingPage9 extends StatefulWidget {
  const LandingPage9({super.key});

  @override
  State<LandingPage9> createState() => _LandingPage9State();
}

class _LandingPage9State extends State<LandingPage9> {
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
              'What year were you',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            const Text(
              'born?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 500, child: YearPickerWidget()),
            const SizedBox(
              height: 35,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LandingPage10()));
                },
                child: MyButtons(ontap: () {}, text: 'Continue'))
          ],
        ),
      )),
    );
  }
}
