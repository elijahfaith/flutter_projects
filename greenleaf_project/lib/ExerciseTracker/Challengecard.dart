import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:greenleaf_project/ExerciseTracker/coralReward.dart';
import 'package:greenleaf_project/ExerciseTracker/pastchallenge.dart';
import 'package:greenleaf_project/const.dart';

class ChallengeCard extends StatefulWidget {
  const ChallengeCard({super.key});

  @override
  State<ChallengeCard> createState() => _ChallengeCardState();
}

int selectedNumber = 0;

class _ChallengeCardState extends State<ChallengeCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Challenges',
            style: TextStyle(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w300),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: backgroundcard,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(
                        'assets/images/reward.png',
                        color: lightPurple,
                        scale: 4,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'Choose your challenge',
                  style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300),
                ),
                const Divider(
                  thickness: 1,
                  color: lightPurple,
                ),
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
                      width: 10,
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
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Take 5000 steps a day',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.directions_walk,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      '12',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 55,
                                    ),
                                    Text(
                                      '3 days left ',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: deepPurpe,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Center(
                                child: Text(
                                  'Join',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  thickness: 1,
                  color: lightPurple,
                ),
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
                        child: const Icon(Icons.nordic_walking_sharp)),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'February 5km Race',
                          style: TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.directions_walk,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      '112',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      '5 days left ',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: deepPurpe,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Center(
                                child: Text(
                                  'Ongoing',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  thickness: 1,
                  color: lightPurple,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: lightPurple,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(
                        'assets/images/footprint.png',
                        color: Colors.purpleAccent,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'February Walk Challenge',
                          style: TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Walk 1 km a day',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.directions_walk,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      '42',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 55,
                                    ),
                                    Text(
                                      '3 days left ',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: deepPurpe,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Center(
                                child: Text(
                                  'Join',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  thickness: 1,
                  color: lightPurple,
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                   onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Coralreward()));
            },
                  child: Container(
                    padding: const EdgeInsets.only(left:20, top: 20),
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: lightgrey,
                        borderRadius: BorderRadius.circular(10),
                         image: const DecorationImage(
                        image: AssetImage('assets/images/Group149.png'),
                        fit: BoxFit.cover)),
                        child: const Text('My coral rewards', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),),
                        
                  ),
                ),
                const SizedBox(height: 10,),
                 GestureDetector(
                  onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Pastchallenge()));
            },
                   child: Container(
                                 padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                                 height: 120,
                                 width: double.infinity,
                                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: backgroundcard,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/Group149.png',),
                        fit: BoxFit.cover)),
                                 child:Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                    const Text(
                      'Past challenges',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          color: deepPurpe),
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                     Image.asset(
                          'assets/images/reward.png',
                         scale: 1.7,
                        ),
                      ],
                    )
                                   ],
                                 ),
                               ),
                 ),
              ],
            ),
          ),
        ));
  }
}
