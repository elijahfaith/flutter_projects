import 'package:flutter/material.dart';

class LogoTitle extends StatelessWidget {
  const LogoTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white),
        child: Image.asset(
          'assets/images/logoicon.png',
          height: 30,
        ));
  }
}
