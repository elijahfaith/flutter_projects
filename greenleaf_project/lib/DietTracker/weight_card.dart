import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/const.dart';
import 'package:kdgaugeview/kdgaugeview.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/cupertino.dart';

class WeightCard extends StatelessWidget {
  const WeightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weight',
          style: TextStyle(
              fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        actions: const [Icon(Icons.notification_add_outlined), SizedBox(width: 20)],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Goal weight:',
                  style: GoogleFonts.manrope(fontSize: 18),
                ),
                Text(
                  '60',
                  style: GoogleFonts.manrope(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: deepPurpe),
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  'kg',
                  style: GoogleFonts.manrope(color: deepPurpe, fontSize: 16),
                ),
              ],
            ),
            const Align(heightFactor: 0.5, child: radialgauge()),
            const SizedBox(
              height: 35,
            ),
            Container(
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'BMI',
                          style: TextStyle(fontSize: 16, color: Colors.purple),
                        ),
                        Text(
                          '256',
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.purple,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Height',
                          style: TextStyle(fontSize: 16, color: Colors.purple),
                        ),
                        Row(
                          children: [
                            Text(
                              '172',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  _showDialog(context);
                },
                child: MyButtons(ontap: () {}, text: 'Add new weight'))
          ],
        ),
      ),
    );
  }
}

class radialgauge extends StatelessWidget {
  const radialgauge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      animationDuration: 300,
      axes: <RadialAxis>[
        RadialAxis(
          canScaleToFit: true,
          minimum: 0,
          maximum: 70,
          startAngle: 163,
          endAngle: 380,
          showLabels: false,
          radiusFactor: 0.8,
          interval: 3,
          axisLineStyle: AxisLineStyle(
            thickness: 0.22,
            color: Colors.grey.withOpacity(0.2),
            thicknessUnit: GaugeSizeUnit.factor,
          ),
          pointers: const <GaugePointer>[
            RangePointer(
              value: 80,
              width: 0.19,
              sizeUnit: GaugeSizeUnit.factor,
              color: Colors.purple,
              cornerStyle: CornerStyle.bothCurve,
            )
          ],
          annotations: const <GaugeAnnotation>[
            GaugeAnnotation(
              verticalAlignment: GaugeAlignment.near,
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '70 kg',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
              angle: 90,
              positionFactor: 0,
            ),
          ],
        ),
      ],
    );
  }
}

_showDialog(BuildContext context) {
  showDialog(
      barrierColor: Colors.black.withOpacity(0.9),
      barrierDismissible: true,
      context: context,
      builder: (context) => CupertinoAlertDialog(
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const Text('Add weight'),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.close))
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                    child: Row(
                  children: [
                    const Spacer(),
                    const Text(
                      '70.0',
                      style: TextStyle(
                          fontSize: 38,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: lightPurple),
                      child: const Center(child: Text('kg', style: TextStyle(fontSize: 16),)),
                    )
                  ],
                )),
                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                const Row(
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(fontSize: 14, color: Colors.purple),
                    ),
                    Spacer(),
                    Text(
                      '24 Feb, 2021, 08:36',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                const SizedBox(height: 50),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: MyButtons(ontap: () {}, text: 'Save'))
              ],
            ),
          ));
}
