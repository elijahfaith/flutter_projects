import 'package:flutter/material.dart';
import 'package:greenleaf_project/ExerciseTracker/Challengecard.dart';
import 'package:greenleaf_project/ExerciseTracker/TrackActivities.dart';
import 'package:greenleaf_project/ExerciseTracker/stepscard.dart';
import 'package:greenleaf_project/Wellbeing/Insight_Page.dart';
import 'package:greenleaf_project/components/iconbuttton.dart';
import 'package:greenleaf_project/const.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class Exercisetrackertab extends StatelessWidget {
  const Exercisetrackertab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hi Dupe,',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Good morning, select a card to get started',
            style: TextStyle(letterSpacing: 0.5, fontSize: 16),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Stepscard()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                      width: 175,
                      height: 250,
                      decoration: BoxDecoration(
                        color: const Color(0xFF6A0D6A),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Steps',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                          CircularPercentIndicator(
                            animation: true,
                            animationDuration: 2000,
                            radius: 60,
                            lineWidth: 16,
                            percent: 0.71,
                            progressColor: backgroundcard,
                            backgroundColor: Colors.purple,
                            circularStrokeCap: CircularStrokeCap.round,
                            center:  const Image(
                              image: AssetImage(
                                'assets/images/bigfoot.png', 
                              ), color: Colors.white,
                            
                            ),
                          ),
                          const Text(
                            '6,400',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                          const Text(
                            'Goals: 10,000',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Trackactivities()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 12, top: 20, right: 10),
                      width: 175,
                      height: 250,
                      decoration: BoxDecoration(
                          color: backgroundcard,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Track\nActivities',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  color: deepPurpe)),
                          const SizedBox(
                            height: 5,
                          ),
                          Center(
                              child: Image.asset(
                            'assets/images/Group797.png',
                          )),
                          const SizedBox(
                            height: 5,
                          ),
                          const Row(
                            children: [
                              Text('Activities:',
                                  style: TextStyle(
                                      fontSize: 18, color: deepPurpe)),
                              SizedBox(
                                width: 5,
                              ),
                              Text('3',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: deepPurpe)),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Row(
                            children: [
                              Text(
                                'Total km:',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20,
                                    color: deepPurpe),
                              ),
                              Text(
                                '16.9',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: deepPurpe),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ChallengeCard()));
            },
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: backgroundcard,
                  image: const DecorationImage(
                      image: AssetImage('assets/images/Group149.png'),
                      fit: BoxFit.cover)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Challenges',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: deepPurpe),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Take on different challenges\nand get coral rewards',
                    style: TextStyle(fontSize: 14, color: deepPurpe),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image(image: AssetImage('assets/images/reward.png'))
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InsightPageWellbeing()));
            },
            child: Container(
              padding: const EdgeInsets.only(left: 10, top: 20, right: 20),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: backgroundcard),
              child: Column(
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Insight',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: deepPurpe),
                      ),
                      Spacer(),
                      Image(
                        image: AssetImage('assets/images/footprint.png'),
                        color: deepPurpe,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    children: [
                      Text(
                        '4,899',
                        style: TextStyle(fontSize: 22, color: Colors.black),
                      ),
                      Spacer(),
                      Text(
                        '32,899',
                        style: TextStyle(fontSize: 22, color: Colors.black),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        'Average steps',
                        style: TextStyle(color: Colors.black),
                      ),
                      Spacer(),
                      Text(
                        'Total steps',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 150,
                    child: BarChart(
                      BarChartData(
                        groupsSpace: 1,
                        alignment: BarChartAlignment.spaceEvenly,
                        maxY: 3, // Max hours (e.g., 12AM - 6AM)
                        barTouchData: BarTouchData(enabled: true),
                        titlesData: FlTitlesData(
                          topTitles: const AxisTitles(
                              sideTitles: SideTitles(
                                  reservedSize: 0, showTitles: false)),
                          rightTitles: const AxisTitles(
                              sideTitles: SideTitles(
                                  reservedSize: 0, showTitles: false)),
                          show: true,
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                const days = [
                                  'Mon',
                                  'Tue',
                                  'Wed',
                                  'Thu',
                                  'Fri',
                                  'Sat',
                                  'Sun',
                                ];
                                return Text(
                                  days[value.toInt()],
                                );
                              },
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              reservedSize: 45,
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                switch (value.toInt()) {
                                  case 2:
                                    return const Text('15000');
                                  case 1:
                                    return const Text('10000');
                                  case 0:
                                    return const Text('5000');
                                  default:
                                    return const Text('20000');
                                }
                              },
                            ),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        gridData: FlGridData(
                            drawVerticalLine: false,
                            getDrawingHorizontalLine: (value) {
                              return const FlLine(
                                  color: Colors.white, strokeWidth: 2);
                            }),
                        barGroups: [
                          BarChartGroupData(
                            barsSpace: 2,
                            x: 0,
                            barRods: [
                              BarChartRodData(
                                  width: 15,
                                  toY: 3,
                                  color: Colors.purple), // Monday
                            ],
                          ),
                          BarChartGroupData(
                            barsSpace: 2,
                            x: 1,
                            barRods: [
                              BarChartRodData(
                                  width: 15,
                                  toY: 2.5,
                                  color: Colors.purple), // Tuesday
                            ],
                          ),
                          BarChartGroupData(
                            x: 2,
                            barRods: [
                              BarChartRodData(
                                  width: 15,
                                  toY: 2,
                                  color: Colors.purple), // Wednesday
                            ],
                          ),
                          BarChartGroupData(
                            x: 3,
                            barRods: [
                              BarChartRodData(
                                  width: 15,
                                  toY: 1.5,
                                  color: Colors.purple), // Wednesday
                            ],
                          ),
                          BarChartGroupData(
                            x: 4,
                            barRods: [
                              BarChartRodData(
                                  width: 15,
                                  toY: 1.2,
                                  color: Colors.purple), // Wednesday
                            ],
                          ),
                          BarChartGroupData(
                            x: 5,
                            barRods: [
                              BarChartRodData(
                                  width: 15,
                                  toY: 0.9,
                                  color: Colors.purple), // Wednesday
                            ],
                          ),
                          BarChartGroupData(
                            x: 6,
                            barRods: [
                              BarChartRodData(
                                  width: 15,
                                  toY: 0.3,
                                  color: Colors.purple), // Wednesday
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
