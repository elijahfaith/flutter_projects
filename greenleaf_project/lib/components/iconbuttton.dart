import 'package:flutter/material.dart';
import 'package:greenleaf_project/const.dart';


class Iconbutton extends StatelessWidget {
  final IconData icon;
   Color color;
   Color iconColor;
   Iconbutton({
    super.key, required this.icon, required this.color, required this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
    constraints: const BoxConstraints.tightFor(width: 30, height: 30),
    onPressed: () {},
    shape: const CircleBorder(),
    fillColor: color,
    child: Icon(
      icon,
      color: iconColor
    )
              );
  }
}
