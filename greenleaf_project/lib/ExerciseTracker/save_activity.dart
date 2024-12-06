import 'package:flutter/material.dart';
import 'package:greenleaf_project/ExerciseTracker/GoogleMapPage.dart';
import 'package:greenleaf_project/ExerciseTracker/TrackActivities.dart';
import 'package:greenleaf_project/ExerciseTracker/WalkTracktab.dart';
import 'package:greenleaf_project/ExerciseTracker/coundown_screen.dart';
import 'package:greenleaf_project/ExerciseTracker/gpsSetting.dart';
import 'package:greenleaf_project/ExerciseTracker/records.dart';
import 'package:greenleaf_project/ExerciseTracker/save_activity.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/components/reusablecontainer.dart';
import 'package:greenleaf_project/const.dart';

class SaveActivity extends StatefulWidget {
  const SaveActivity({super.key});

  @override
  State<SaveActivity> createState() => _SaveActivityState();
}

class _SaveActivityState extends State<SaveActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Save activity',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w300),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete_outline,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Googlemappage(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      '5.03',
                      style: TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      'km',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              '09:12',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              'Current Place',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '21:12',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              'Time',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '07:29',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              'Average place',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 10, top: 20, bottom: 20),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: backgroundcard,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Activity type',
                          style: TextStyle(color: Colors.purple, fontSize: 18),
                        ),
                        const VerticalDivider(
                          thickness: 2,
                          color: Colors.purple,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Walk',
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 18),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_downward_sharp,
                                  color: Colors.purple,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  GestureDetector(
                     onTap: (){
                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Trackactivities()));
                },
                    
                    child: const MyButtons(ontap: null, text: 'Save'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
