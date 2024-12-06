import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LandingButton4 extends StatelessWidget {
  final String text;
  final Color color;

  const LandingButton4({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
                color: Colors.purple,
                fontSize: 18,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
