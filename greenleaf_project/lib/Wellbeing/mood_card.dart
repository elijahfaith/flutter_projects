import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenleaf_project/components/button.dart';
import 'package:greenleaf_project/const.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:google_fonts/google_fonts.dart';

class MoodCard extends StatelessWidget {
  const MoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mood'),),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Center(
              child: Text(
                'What is your mood?',
                style: GoogleFonts.manrope(fontSize: 18, fontWeight: FontWeight.w200),
              ),
            ),
            
            const SizedBox(
            height: 20,
            ),
            
            const Align(heightFactor: 0.5, child: radialgauge()),
            const SizedBox(
              height: 35,
            ),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: MyButtons(ontap: () {}, text: 'Save'))
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
          maximum: 40,
          startAngle: 163,
          endAngle: 380,
          showLabels: false,
          radiusFactor: 0.8,
          interval: 20,
          axisLineStyle: AxisLineStyle(
            thickness: 0.22,
            color: Colors.grey.withOpacity(0.2),
            thicknessUnit: GaugeSizeUnit.factor,
          ),
          pointers:const <GaugePointer>[
            RangePointer(
              value: 80,
              width: 0.19,
              sizeUnit: GaugeSizeUnit.factor,
              color: mood,
              cornerStyle: CornerStyle.bothCurve,
            ),
            MarkerPointer(
              value: 10,
              enableDragging: true,
              markerHeight: 40,
              markerWidth: 40, 
              markerType: MarkerType.circle,
              borderColor: Colors.white,
              borderWidth: 3,
              color: mood,
              imageUrl: 'assets/images/moodhappy.png',
            )
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
              verticalAlignment: GaugeAlignment.center,
              widget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 60,),
                  Image.asset('assets/images/moodhappy.png',color: mood, scale: 2, ),
                  const Text(
                    'Happy',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.black
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







