import 'package:flutter/material.dart';

class comment extends StatelessWidget {
  final String text;
  Color color;
  comment({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
