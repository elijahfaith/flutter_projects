import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/loginsymptom.dart';
import 'package:greenleaf_project/components/radialguage.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class Periodtrackertab extends StatelessWidget {
  const Periodtrackertab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                height: 100,
                child: DatePicker(
                  DateTime.now(),
                  height: 80,
                  width: 50,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.purple,
                  selectedTextColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  height: 250,
                  width: 230,
                  child: const RadialGuage(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 85,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 129, 125),
                            )),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/landingicon1.png'),
                              color: Color.fromARGB(255, 255, 129, 125),
                              height: 15,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '4 days',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 129, 125),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Next Period')
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 85,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                              color: const Color.fromARGB(255, 173, 121, 218),
                            )),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/Vector.png'),
                              color: Color.fromARGB(255, 173, 121, 218),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '4 days',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 173, 121, 218),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Ovulation')
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 85,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                              color: const Color.fromARGB(255, 244, 233, 83),
                            )),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/Group 84.png'),
                              color: Color.fromARGB(255, 244, 233, 83),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '4 days',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 244, 233, 83),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Pregnancy'),
                      const Text('chance'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const LoginSymptoms(),
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: const Column(
                  children: [
                    Text(
                      'Your Cycles',
                      style: TextStyle(
                          color: Colors.purple, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 140,
                      width: 150,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 129, 125),
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                            color: const Color.fromARGB(255, 255, 129, 125),
                          )),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Previous \n cycle length',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.info_outline,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              '14 days',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/images/alertriangle.png'),
                                  color: Color.fromARGB(255, 244, 233, 83),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Abnormal',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      height: 140,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          border: Border.all(color: Colors.purple)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Previous\nperiod length',
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(Icons.info_outline, color: Colors.purple)
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              '14 days',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/checkcircle.png'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Normal',
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
      ],
    );
  }
}