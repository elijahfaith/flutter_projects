import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final Function()? ontap;

  const LoginButton({
    super.key,
    required this.ontap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.purple, width: 2)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.purple[200],
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
