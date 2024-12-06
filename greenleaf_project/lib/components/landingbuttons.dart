import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LandingButtons extends StatelessWidget {
  final String text;
  final Color color;
  final String image;

  const LandingButtons(
      {super.key,
      required this.text,
      required this.color,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(image)),
          const SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Colors.purple,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
