import 'package:flutter/material.dart';
import 'package:greenleaf_project/const.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Pastchallenge extends StatelessWidget {
  const Pastchallenge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Past challenges',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.w200),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding:  const EdgeInsets.only(left: 15, top: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: backgroundcard,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    'assets/images/footprint.png',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'February Steps Challenge',
                      style: TextStyle(fontSize: 18),
                    ),
                    Row( 
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Icon(
                                  Icons.directions_walk,
                                  color: Colors.grey,
                                ),
                                Text(
                                  '6',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            const Row( 
                              children: [
                                Text(
                                  '24 / 28days',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                Text(
                                  'Finished ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            LinearPercentIndicator(
                              animation: true,
                              animationDuration: 5000,
                              lineHeight: 10,
                              percent: 0.8,
                              backgroundColor: lightgrey,
                              progressColor: deepPurpe,
                              width: 270,
                              barRadius: const Radius.circular(10),
                              padding: const EdgeInsets.only(left: 0),
                            ),
                          ],
                        ),
                        
                      ],
                    ),
                    
                  ],
                )
              ],
            ),
            
            const SizedBox(height: 20,),   

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: mood,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Icon(Icons.nordic_walking_sharp)
                ),
                const SizedBox(
                  width: 20,
                ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'February 5km race',
                      style: TextStyle(fontSize: 18),
                    ),
                    Row( 
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Icon(
                                  Icons.directions_walk,
                                  color: Colors.grey,
                                ),
                                Text(
                                  '112',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            const Row( 
                              children: [
                                Text(
                                  '3.38 / 5km',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                Text(
                                  'Finished ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                             const SizedBox(height: 10,),
                            LinearPercentIndicator(
                              animation: true,
                              animationDuration: 5000,
                              lineHeight: 10,
                              percent: 0.8,
                              backgroundColor: lightgrey,
                              progressColor: deepPurpe,
                              width: 270,
                              barRadius: const Radius.circular(10),
                              padding: const EdgeInsets.only(left: 0),
                            ),
                          ],
                        ),
                        
                      ],
                    ),
                    
                  ],
                )
              ],
            ),
                             
            
          ],
        ),
      ),
    );
  }
}
