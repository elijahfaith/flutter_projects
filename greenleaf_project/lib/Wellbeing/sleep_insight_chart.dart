import 'package:flutter/material.dart';
import 'package:greenleaf_project/const.dart';
import 'package:fl_chart/fl_chart.dart';

class SleepInsightChart extends StatelessWidget {
  const SleepInsightChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            );
  }
}