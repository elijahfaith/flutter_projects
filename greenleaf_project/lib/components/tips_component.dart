import 'package:flutter/material.dart';

class tips_component extends StatelessWidget {
  final String text;
  final String SubText;
  final String image;

  const tips_component(
      {super.key,
      required this.SubText,
      required this.image,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 250, 226, 254),
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Image(
              image: AssetImage(image),
              height: 60,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              SubText,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.left,
            )
          ],
        )
      ],
    );
  }
}
