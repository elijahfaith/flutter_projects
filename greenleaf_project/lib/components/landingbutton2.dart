import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LandingButton2 extends StatelessWidget {
  final String text;
  final Color color;
  final String image;

  const LandingButton2(
      {super.key,
      required this.text,
      required this.color,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
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
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
