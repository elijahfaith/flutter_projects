import 'package:flutter/material.dart';

class option_Widget extends StatelessWidget {
  final String Label;
  final String labelText;
  final Ontap;
  const option_Widget(
      {super.key,
      required this.Label,
      required this.labelText,
      required this.Ontap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Label,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5),
            Text(
              labelText,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: Ontap,
          child: const Icon(
            Icons.arrow_forward_ios,
            size: 22, color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
