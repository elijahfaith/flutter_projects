import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondayTestStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 25),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "\$0.99",
                  style: myPrimaryTextStyle,
                ),
                Text(
                  "Delivery Fee",
                  style: mySecondayTestStyle,
                ),
              ],
            ),

            //delivery time
            Column(
              children: [
                Text(
                  "15-30 min",
                  style: myPrimaryTextStyle,
                ),
                Text(
                  "Delivery time",
                  style: mySecondayTestStyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
