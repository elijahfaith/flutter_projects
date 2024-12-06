import 'package:flutter/material.dart';

class postavatar extends StatelessWidget {
  const postavatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromARGB(255, 169, 159, 254),
      ),
      child: const Center(
        child: Image(
          image: AssetImage('assets/images/Avatar2.png'),
          height: 30,
        ),
      ),
    );
  }
}
