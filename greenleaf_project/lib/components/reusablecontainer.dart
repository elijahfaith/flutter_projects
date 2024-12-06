import 'package:flutter/material.dart';

class reusablecontainer extends StatelessWidget {
  Color color;
  final String text;
  final String imagePath;
  reusablecontainer(
      {super.key,
      required this.color,
      required this.text,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          width: 65,
          decoration:
              BoxDecoration(color: color, borderRadius: BorderRadius.circular(40)),
          child: Image(image: AssetImage(imagePath))
        ),
        const SizedBox(height: 10,),
        Text(text, style: const TextStyle(fontSize: 16),)
      ],
    );
  }
}
