import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenleaf_project/const.dart'; // Assuming deepPurpe is defined here

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int selectedNumber = 0; 

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Selected Number: $selectedNumber',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 150, // Height of the picker
          child: CupertinoPicker(
            itemExtent: 40.0, // Height of each item
            onSelectedItemChanged: (int index) {
              setState(() {
                selectedNumber = index;
              });
            },
            children: List<Widget>.generate(100, (int index) {
              return Center(
                child: Text(
                  index.toString(),
                  style: const TextStyle(fontSize: 24, color: deepPurpe),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
