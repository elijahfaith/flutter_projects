import 'dart:async';
import 'package:flutter/material.dart';
import 'package:greenleaf_project/ExerciseTracker/ongoing_track_activity.dart';
import 'package:greenleaf_project/const.dart';

class CountdownPage extends StatefulWidget {
  const CountdownPage({super.key});

  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<CountdownPage> {
  int _countdown = 3;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_countdown > 1) {
          _countdown--;
        } else {
          timer.cancel();
          _navigateToEmptyPage();
        }
      });
    });
  }

  void _navigateToEmptyPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const OngoingTrackActivity()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcard,
      body: Center(
        child: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_countdown',
              style: const TextStyle(
                color: deepPurpe,
                fontSize: 100,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 60,),
            const Text('Tap to skip countdown')
          ],
        ),
      ),
    );
  }
}
