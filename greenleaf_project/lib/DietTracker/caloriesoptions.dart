import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenleaf_project/const.dart';

class CaloriesOption extends StatelessWidget {

  final String text;
  final String label;
  final String sublabel;
  Color color;
  final double space;
  CaloriesOption({
    super.key, required this.text, required this.label, required this.sublabel, required this.color, required this.space
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: color,
          ),
        ),
        const SizedBox(width: 25),
        Text(
          text,
          style: GoogleFonts.manrope(
            fontSize: 14,
          ),
        ),
        SizedBox(width: space),
        Text(
          label,
          style: GoogleFonts.manrope(
            fontSize: 14,
          ),
        ),
        const Spacer(),
        Text(
          sublabel,
          style: GoogleFonts.manrope(
              fontSize: 14,
              fontStyle: FontStyle.italic,
              color: Colors.grey),
        ),
      ],
    );
  }
}
