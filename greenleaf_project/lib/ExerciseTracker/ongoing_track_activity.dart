import 'package:flutter/material.dart';
import 'package:greenleaf_project/ExerciseTracker/GoogleMapPage.dart';
import 'package:greenleaf_project/ExerciseTracker/coundown_screen.dart';
import 'package:greenleaf_project/ExerciseTracker/gpsSetting.dart';
import 'package:greenleaf_project/ExerciseTracker/records.dart';
import 'package:greenleaf_project/ExerciseTracker/save_activity.dart';
import 'package:greenleaf_project/components/reusablecontainer.dart';
import 'package:greenleaf_project/const.dart';

class OngoingTrackActivity extends StatefulWidget {
  const OngoingTrackActivity({super.key});

  @override
  _OngoingTrackActivityState createState() => _OngoingTrackActivityState();
}

class _OngoingTrackActivityState extends State<OngoingTrackActivity> {
  bool isPaused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Track Activities',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w300),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Gpssetting()));
            },
            icon: const Icon(
              Icons.settings,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              height: 40,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: backgroundcard),
              child: const Center(
                  child: Text(
                'Walk',
                style: TextStyle(color: deepPurpe),
              )),
            ),
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Googlemappage(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '5.03',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w300),
                      ),
                      Text('00:21:23',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w300))
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('km'), Text('Time')],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '09:12',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w300),
                      ),
                      Text('07:56',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w300))
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Current place'), Text('Average Place')],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: isPaused
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SaveActivity()));
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: deepPurpe),
                            child: const Center(
                                child: Text(
                              'Finish',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isPaused = false;
                            });
                            // Handle resume action here
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: backgroundcard),
                            child: const Center(
                              child: Text('Resume',
                                  style: TextStyle(color: deepPurpe)),
                            ),
                          ),
                        ),
                      ],
                    )
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          isPaused = true;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: deepPurpe),
                        child: const Center(
                          child: Icon(
                            Icons.pause,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
