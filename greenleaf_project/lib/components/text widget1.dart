import 'package:flutter/material.dart';

class topics_widget extends StatelessWidget {
  final String text;
  Color color;
  topics_widget({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.purple,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
