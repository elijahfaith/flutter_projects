import 'package:flutter/material.dart';
import 'package:greenleaf_project/pages/welcome_page.dart';

class MyButtons extends StatelessWidget {
  final String text;
  final Function()? ontap;

  const MyButtons({super.key, required this.ontap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      decoration: BoxDecoration(
          color: Colors.purple, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
