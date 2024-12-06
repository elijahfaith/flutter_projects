import 'package:flutter/material.dart';
import 'package:greenleaf_project/Wellbeing/Insight_Page.dart';
import 'package:greenleaf_project/Wellbeing/mood_card.dart';
import 'package:greenleaf_project/Wellbeing/sleep_card.dart';
import 'package:greenleaf_project/Wellbeing/vitamin_card.dart';
import 'package:greenleaf_project/Wellbeing/wellbeing_radialGuage.dart';
import 'package:greenleaf_project/components/iconbuttton.dart';
import 'package:greenleaf_project/const.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fl_chart/fl_chart.dart';

class WellBeing extends StatelessWidget {
  const WellBeing({super.key});

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
                          MaterialPageRoute(builder: (context) => SleepCard()));
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
                            'Sleep',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                          const Align(
                            heightFactor: 0.2,
                            child: WellbeingRadialguage(),
                          ),
                          Container(
                              child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '12AM',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '6AM',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          )),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            '6hrs',
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const MoodCard()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 12, top: 20, right: 10),
                      width: 175,
                      height: 250,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 246, 143, 143),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Mood',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                              child:
                                  Image.asset('assets/images/moodhappy.png', )),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Current Mood',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Colors.white,
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Happy',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w300,
                              fontSize: 24,
                              color: Colors.white,
                            ),
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
                  MaterialPageRoute(builder: (context) => const VitaminCard()));
            },
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: backgroundcard),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Vitamin',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: deepPurpe),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '2/4.0',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: deepPurpe),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Iconbutton(
                        icon: Icons.remove,
                        color: deepPurpe,
                        iconColor: Colors.white,
                      ),
                      const SizedBox(width: 5),
                      Image.asset('assets/images/medimage.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      Iconbutton(
                        icon: Icons.add,
                        color: deepPurpe,
                        iconColor: Colors.white,
                      )
                    ],
                  ),
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
              padding: const EdgeInsets.only(left: 10, top: 20, right: 10),
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
                        image: AssetImage('assets/images/sleep.png'),
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
                        '5hrs 33min',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Spacer(),
                      Text(
                        '12AM - 6AM',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        'Average bed time',
                        style: TextStyle(color: Colors.black),
                      ),
                      Spacer(),
                      Text(
                        'Sleep Schedule',
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
                        alignment: BarChartAlignment.spaceAround,
                        maxY: 3, // Max hours (e.g., 12AM - 6AM)
                        barTouchData: BarTouchData(enabled: false),
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
                                return Text(days[value.toInt()], );
                              },
                            ),
                          ),
                          leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                       
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 2:
                              return const Text('2AM');
                            case 1:
                              return const Text('4AM');
                            case 0:
                              return const Text('6AM');
                             default:
                              return const Text('12AM');
                          }
                        },
                            ),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        barGroups: [
                          BarChartGroupData(
                            x: 0,
                            barRods: [
                              BarChartRodData(
                                  toY: 3, color: Colors.purple), // Monday
                            ],
                          ),
                          BarChartGroupData(
                            x: 1,
                            barRods: [
                              BarChartRodData(
                                  toY: 2, color: Colors.purple), // Tuesday
                            ],
                          ),
                          BarChartGroupData(
                            x: 2,
                            barRods: [
                              BarChartRodData(
                                  toY: 3, color: Colors.purple), // Wednesday
                            ],
                          ),
                          BarChartGroupData(
                            x: 3,
                            barRods: [
                              BarChartRodData(
                                  toY: 1.5, color: Colors.purple), // Wednesday
                            ],
                          ),
                          BarChartGroupData(
                            x: 4,
                            barRods: [
                              BarChartRodData(
                                  toY: 1, color: Colors.purple), // Wednesday
                            ],
                          ),
                          BarChartGroupData(
                            x: 5,
                            barRods: [
                              BarChartRodData(
                                  toY: 2.3, color: Colors.purple), // Wednesday
                            ],
                          ),
                          BarChartGroupData(
                            x: 6,
                            barRods: [
                              BarChartRodData(
                                  toY: 2.2, color: Colors.purple), // Wednesday
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
