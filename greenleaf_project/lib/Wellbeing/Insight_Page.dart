import 'package:flutter/material.dart';
import 'package:greenleaf_project/DietTracker/weighttab.dart';
import 'package:greenleaf_project/ExerciseTracker/Steptab.dart';
import 'package:greenleaf_project/Wellbeing/sleeptab.dart';

class InsightPageWellbeing extends StatefulWidget {
  const InsightPageWellbeing({super.key});

  @override
  State<InsightPageWellbeing> createState() => _InsightPageWellbeingState();
}

List<String> items = [
  "Sleep",
  "Mood",
  "Vitamins",
  "Weight",
  "Water",
  "Steps"
  "Calories"
  
];
 int current = 0;

class _InsightPageWellbeingState extends State<InsightPageWellbeing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Insight', style: TextStyle(fontStyle: FontStyle.italic), ), centerTitle: true,),
    body: Padding(padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
    child: Column(
      children: [
         SizedBox(
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
                        child: Container( margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.symmetric(horizontal: 18,),
                        decoration: BoxDecoration(color: current == index ?const Color.fromARGB(255, 250, 226, 254) : const Color.fromARGB(255, 239, 238, 238), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                         child: Text(items[index], style: TextStyle(color: current == index ? Colors.purple : Colors.black, fontSize: 15),),
                        ),),
                      );
                    }),
                 ),
                  IndexedStack(
                    index: current,
                    children: [
                      Center(child: Sleeptab(),),
                      const Center(child: Text('Mood')),
                      const Center(child: Text('Vitamin')),
                      Center(child: Weighttab()),
                      const Center(child: Text('Water')),
                      Center(child: Steptab()),
                      const Center(child: Text('Calories')),
                    ],
                  )
             
        
      ],
    ),),
    );
  }
}