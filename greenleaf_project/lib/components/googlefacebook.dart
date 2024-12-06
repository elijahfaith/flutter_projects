import 'package:flutter/material.dart';

class GoogleFacebook extends StatelessWidget {
  final String imagepath;

  const GoogleFacebook({
    super.key,
    required this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.purple.shade500),
            borderRadius: BorderRadius.circular(30),
            color: Colors.white),
        child: Image.asset(
          imagepath,
          height: 30,
        ));
  }
}
