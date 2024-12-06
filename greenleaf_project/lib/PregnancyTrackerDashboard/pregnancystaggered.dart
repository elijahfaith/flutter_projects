import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PregnancytaggeredWidgets extends StatelessWidget {
  final int crossAxis;
  final double MainAxis;
  final String image;
  final String Label;
  final String LabelText;
  final onTap;

   const PregnancytaggeredWidgets(
      {super.key,
      required this.crossAxis,
      required this.image,
      required this.Label,
      required this.MainAxis,
      required this.LabelText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      crossAxisCellCount: crossAxis,
      mainAxisCellCount: MainAxis,
      child: GestureDetector(
        onTap: onTap ,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(13)),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left:5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  Label,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  LabelText,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
