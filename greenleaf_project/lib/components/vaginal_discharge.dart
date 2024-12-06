import 'package:flutter/material.dart';

class VaginalDischarge extends StatelessWidget {
  final String text;

  final String image;
  const VaginalDischarge({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 255, 149, 149),
          radius: 25,
          child: Image(
            image: AssetImage(image),
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
        ),
      ],
    );
  }
}
