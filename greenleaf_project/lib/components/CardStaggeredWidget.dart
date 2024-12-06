import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:greenleaf_project/components/iconbuttton.dart';
import 'package:greenleaf_project/const.dart';

class cardStaggeredWidgets extends StatelessWidget {
  final int crossAxis;
  final double MainAxis;
  final String image;
  final String Label;
  final String LabelText;
  final onTap;

   const cardStaggeredWidgets(
      {super.key,
      required this.crossAxis,
      required this.image,
      required this.Label,
      required this.MainAxis,
      required this.LabelText,
      required this. onTap});

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      crossAxisCellCount: crossAxis,
      mainAxisCellCount: MainAxis,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(13)),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                Label,
                style: const TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w200,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                LabelText,
                style: const TextStyle(color: Colors.white),
              ),
              const Spacer(),
              Row( mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                        child: IconButton(onPressed: onTap, icon: const Icon(Icons.arrow_forward, color: deepPurpe,)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
