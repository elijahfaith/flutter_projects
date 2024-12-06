import 'package:flutter/material.dart';

class symptoms extends StatelessWidget {
  final String text;

  final String image;
  const symptoms({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 244, 235, 67),
          radius: 25,
          child: Image(
            image: AssetImage(image),
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
        ),
      ],
    );
  }
}
