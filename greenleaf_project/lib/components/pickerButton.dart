import 'package:flutter/material.dart';

class pickerbutton extends StatelessWidget {
  const pickerbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 213, 213, 213),
          borderRadius: BorderRadius.circular(10)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Diet tracker',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
