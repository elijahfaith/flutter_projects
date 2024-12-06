import 'package:flutter/material.dart';
import 'package:greenleaf_project/const.dart';
import 'package:fl_chart/fl_chart.dart';

class Stepinsight extends StatelessWidget {
  const Stepinsight({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.only(left: 10, top: 20, right: 20),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: backgroundcard),
              child: Column(
                children: [
                 
                  const Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '4,899',
                        style: TextStyle(fontSize: 22, color: Colors.black),
                      ),
                      Image(
                        image: AssetImage('assets/images/footprint.png'),
                        color: deepPurpe,
                      ),
                      
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
                    height: 50,
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
            );
  }
}