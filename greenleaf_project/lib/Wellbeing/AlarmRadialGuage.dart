import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Alarmradialguage extends StatefulWidget {
  const Alarmradialguage({super.key});

  @override
  State<Alarmradialguage> createState() => _AlarmradialguageState();
}

class _AlarmradialguageState extends State<Alarmradialguage> {

  double startAngle = 270;
  double endAngle = 45;

  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    SfRadialGauge(axes: <RadialAxis>[
                      RadialAxis(
                        startAngle: 270,
                        endAngle: 270,
                        minimum: 0,
                        axisLineStyle: const AxisLineStyle(
                          thickness: 20
                        ),
                        maximum: 270,
                        radiusFactor: 0.85,
                        showTicks: true,
                        showLabels: false,
                        interval: 12,
                        axisLabelStyle: const GaugeTextStyle(fontSize: 12),
                        pointers: <GaugePointer>[
                          MarkerPointer(
                            value: startAngle,
                            markerType: MarkerType.circle,
                            color: Colors.purple,
                            markerHeight: 30,
                            markerWidth: 30,
                            enableDragging: true,
                            onValueChanged: (value) {
                              setState(() {
                                startAngle = value;
                              });
                            },
                          ),
                          MarkerPointer(
                            value: endAngle,
                            markerType: MarkerType.circle,
                            color: Colors.purple,
                            markerHeight: 30,
                            markerWidth: 30,
                            enableDragging: true,
                            onValueChanged: (value) {
                              setState(() {
                                endAngle = value;
                              });
                            },
                          ),
                        ],
                        ranges: <GaugeRange>[
                          GaugeRange(
                            startValue: startAngle,
                            endValue: endAngle,
                            color: Colors.purple.withOpacity(0.7),
                            startWidth: 20,
                            endWidth: 20,
                          ),
                        ],
                        annotations: const <GaugeAnnotation>[
                          GaugeAnnotation(
                            angle: 270,
                            positionFactor: 0.7,
                            widget: Text('12AM',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                          GaugeAnnotation(
                            angle: 180,
                            positionFactor: 0.7,
                            widget: Text('6PM',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                          GaugeAnnotation(
                            angle: 90,
                            positionFactor: 0.7,
                            widget: Text('12PM',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                          GaugeAnnotation(
                            angle: 0,
                            positionFactor: 0.7,
                            widget: Text('6AM',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ]),
                  ],
                );
  }
}