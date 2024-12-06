import 'package:flutter/material.dart';

class PasswordText extends StatelessWidget {
  const PasswordText({super.key, required this.obscureText});

  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      obscureText: obscureText,
      decoration: const InputDecoration(
        suffixIcon: Icon(
          Icons.visibility_off,
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.purple),
        ),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
