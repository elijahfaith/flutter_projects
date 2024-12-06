import 'package:flutter/material.dart';
import 'package:greenleaf_project/ExerciseTracker/GoogleMapPage.dart';
import 'package:greenleaf_project/ExerciseTracker/coundown_screen.dart';
import 'package:greenleaf_project/ExerciseTracker/gpsSetting.dart';
import 'package:greenleaf_project/ExerciseTracker/records.dart';
import 'package:greenleaf_project/components/reusablecontainer.dart';
import 'package:greenleaf_project/const.dart';

class Walktracktab extends StatelessWidget {
  const Walktracktab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(children: [
        SizedBox(
          height: 400,
          width: double.infinity,         
          child: Googlemappage(),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                
                child: reusablecontainer(
                  color: backgroundcard,
                  imagePath: 'assets/images/gps.png',
                  text: 'GPS',
                ),
              ),
              reusablecontainer(
                color: backgroundcard,
                imagePath: 'assets/images/music.png',
                text: 'Music',
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RecordsPage()));
                },
                child: reusablecontainer(
                  color: backgroundcard,
                  imagePath: 'assets/images/record.png',
                  text: 'Record',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: GestureDetector(
             onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CountdownPage()),
      );
    },
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: deepPurpe),
              child: const Center(
                child: Text(
                  'GO',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w200),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
