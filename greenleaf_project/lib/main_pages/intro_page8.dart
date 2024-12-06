import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/login_button.dart';
import 'package:greenleaf_project/main_pages/intro_page9.dart';
import 'package:greenleaf_project/main_pages/pages_intro5.dart';
import 'package:quickalert/quickalert.dart';

class LandingPage8 extends StatefulWidget {
  const LandingPage8({super.key});

  @override
  State<LandingPage8> createState() => _LandingPage8State();
}

class _LandingPage8State extends State<LandingPage8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.arrow_back_ios,
              size: 34,
            ),
            const SizedBox(
              height: 70,
            ),
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
                          builder: (context) => const LandingPage9()));
                },
                child: MyButtons(ontap: () {}, text: 'Continue'))
          ],
        ),
      )),
    );
  }
}

class YearPickerWidget extends StatefulWidget {
  const YearPickerWidget({super.key});

  @override
  _YearPickerWidgetState createState() => _YearPickerWidgetState();
}

class _YearPickerWidgetState extends State<YearPickerWidget> {
  late int _selectedYear;

  @override
  void initState() {
    super.initState();
    // Set the initial year to the current year
    _selectedYear = DateTime.now().year;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoDatePicker(
      mode: CupertinoDatePickerMode.date,
      showDayOfWeek: false,
      initialDateTime: DateTime(_selectedYear),
      minimumYear: 1900,
      maximumYear: DateTime.now().year,
      onDateTimeChanged: (DateTime newDateTime) {
        setState(() {
          _selectedYear = newDateTime.year;
        });
      },
    );
  }
}
