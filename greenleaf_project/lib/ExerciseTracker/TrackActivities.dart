import 'package:flutter/material.dart';
import 'package:greenleaf_project/ExerciseTracker/GoogleMapPage.dart';
import 'package:greenleaf_project/ExerciseTracker/WalkTracktab.dart';
import 'package:greenleaf_project/ExerciseTracker/gpsSetting.dart';

class Trackactivities extends StatefulWidget {
  const Trackactivities({super.key});

  @override
  State<Trackactivities> createState() => _TrackactivitiesState();
}

List<String> items = [
  "Walk",
  "Run",
  "Ride",
  "Hike",
];
int current = 0;

class _TrackactivitiesState extends State<Trackactivities> {
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
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            height: 40,
            child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (cxt, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 35,
                      ),
                      decoration: BoxDecoration(
                          color: current == index
                              ? const Color.fromARGB(255, 250, 226, 254)
                              : const Color.fromARGB(255, 239, 238, 238),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          items[index],
                          style: TextStyle(
                              color: current == index
                                  ? Colors.purple
                                  : Colors.black,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          IndexedStack(
            index: current,
            children: const [
              Walktracktab(),
            ],
          ),
        ],
      ),
    );
  }
}
