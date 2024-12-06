import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenleaf_project/PregnancyTrackerDashboard/pregnancy_tracker_dashboard.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/landingbutton3.dart';
import 'package:greenleaf_project/components/landingbutton4.dart';
import 'package:greenleaf_project/components/login_button.dart';
import 'package:greenleaf_project/main_pages/intro_page12.dart';
import 'package:greenleaf_project/main_pages/pages_intro5.dart';
import 'package:greenleaf_project/main_pages/period_tracker_dashboard.dart';
import 'package:quickalert/quickalert.dart';

class LandingPage13 extends StatefulWidget {
  const LandingPage13({super.key});

  @override
  State<LandingPage13> createState() => _LandingPage13State();
}

class _LandingPage13State extends State<LandingPage13> {
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
              'What is your diet like?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 50),
            LandingButton4(
                text: 'No restriction',
                color: const Color.fromARGB(255, 250, 226, 254)),
            const SizedBox(height: 10),
            LandingButton3(
                text: 'Vegetarian', color: const Color.fromARGB(255, 213, 213, 213)),
            const SizedBox(height: 10),
            LandingButton3(
                text: 'Vegan', color: const Color.fromARGB(255, 213, 213, 213)),
            const SizedBox(height: 10),
            LandingButton3(
                text: 'Other', color: const Color.fromARGB(255, 213, 213, 213)),
            const SizedBox(height: 100),
            GestureDetector(
                onTap: () {
                  _showDialog(context);
                   Future.delayed(const Duration(seconds: 1), () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const PregnancyTrackerDashboard()));

                  });
                },
                child: MyButtons(ontap: () {}, text: 'Continue'))
          ],
        ),
      )),
    );
  }
}

_showDialog(BuildContext context) {
  showDialog(
      barrierColor: Colors.black.withOpacity(0.5),
      barrierDismissible: true,
      context: context,
      builder: (context) => CupertinoAlertDialog(
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset('assets/images/circle_check.png'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'You are all set',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50),
                Image.asset('assets/images/coralreeflogo.png'),
              ],
            ),
          ));
}

