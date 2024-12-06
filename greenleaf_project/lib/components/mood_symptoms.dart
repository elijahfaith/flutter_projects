import 'package:flutter/material.dart';

class Mood_symtoms extends StatelessWidget {
  final String text;

  final IconData icon;
  const Mood_symtoms({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 206, 169, 227),
          radius: 25,
          child: Icon(
            icon,
            color: Colors.white,
            size: 36,
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
