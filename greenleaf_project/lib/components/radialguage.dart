import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialGuage extends StatelessWidget {
  const RadialGuage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SfRadialGauge(
              axes: [
                RadialAxis(
                  labelOffset: 0,
                  pointers: const [
                    RangePointer(
                      value: 22,
                      cornerStyle: CornerStyle.bothCurve,
                      color: Color.fromARGB(255, 255, 129, 125),
                      width: 13,
                    ),
                    MarkerPointer(
                      value: 10,
                      enableDragging: true,
                      markerHeight: 30,
                      markerWidth: 30,
                      markerType: MarkerType.circle,
                      color: Color.fromARGB(255, 255, 129, 125),
                      borderWidth: 2,
                      borderColor: Colors.white,
                      markerOffset: -10,
                    ),
                  ],
                  annotations: const [
                    GaugeAnnotation(
                        angle: 90,
                        axisValue: 5,
                        positionFactor: 0.1,
                        widget: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Period:',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Day 2',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ))
                  ],
                  axisLineStyle: const AxisLineStyle(
                    thickness: 13,
                  ),
                  startAngle: 270,
                  endAngle: 270,
                  showLabels: false,
                  showTicks: false,
                ),
                RadialAxis(
                  labelOffset: 0,
                  pointers: const [
                    RangePointer(
                      value: 29,
                      cornerStyle: CornerStyle.bothCurve,
                      color: Color.fromARGB(255, 173, 121, 218),
                      width: 13,
                    )
                  ],
                  axisLineStyle: const AxisLineStyle(thickness: 13),
                  startAngle: 390,
                  endAngle: 270,
                  showLabels: false,
                  showTicks: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
