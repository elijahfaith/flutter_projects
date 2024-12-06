import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:greenleaf_project/Wellbeing/AlarmRadialGuage.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/const.dart';


class SleepCard extends StatefulWidget {
  const SleepCard({super.key});

  @override
  State<SleepCard> createState() => _SleepCardState();
}

class _SleepCardState extends State<SleepCard> {
  bool _light = true;
  double startAngle = 270;
  double endAngle = 45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sleep',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        actions: const [Icon(Icons.notification_add_outlined), SizedBox(width: 20)],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 30),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/images/sleep.png',
                              ),
                              color: deepPurpe,
                            ),
                            Text(
                              'BEDTIME',
                              style: TextStyle(color: deepPurpe),
                            ),
                            Text(
                              '12:00AM',
                              style: TextStyle(
                                  color: deepPurpe, fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.alarm_on_outlined,
                              color: deepPurpe,
                            ),
                            Text(
                              'WAKE UP',
                              style: TextStyle(color: deepPurpe),
                            ),
                            Text(
                              '06:00AM',
                              style: TextStyle(
                                  color: deepPurpe, fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ],
                    )),
                    const Alarmradialguage(),
                
                const Text(
                  '6hrs',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Total sleeping time',
                  style: TextStyle(),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  height: 50,
                  decoration: BoxDecoration(
                    color: lightgrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Add alarm sound',
                        style: TextStyle(fontSize: 16),
                      ),
                      CupertinoSwitch(
                          activeColor: Colors.purple,
                          value: _light,
                          onChanged: (bool value) {
                            setState(() {
                              _light = value;
                            });
                          }),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    padding: const EdgeInsets.only(left: 15, right: 10, top: 15),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: lightgrey, borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your daily sleep schedule',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/images/sleep.png'),
                                      color: deepPurpe,
                                    ),
                                    Text(
                                      'BED TIME',
                                      style: TextStyle(color: deepPurpe),
                                    ),
                                  ],
                                ),
                                Text(
                                  '12:00PM',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300, fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.alarm_on_outlined,
                                          color: deepPurpe,
                                        ),
                                        Text(
                                          'WAKE UP',
                                          style: TextStyle(color: deepPurpe),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '06:00AM',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    )),
                const SizedBox(height: 25,),
                MyButtons(ontap: () {}, text: 'Save')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
