import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class WellbeingRadialguage extends StatelessWidget {
  const WellbeingRadialguage({
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
          startAngle: 190,
          endAngle: 350,
          showLabels: false,
          axisLineStyle: AxisLineStyle(
            thickness: 0.28,
            color: Colors.grey.withOpacity(0.2),
            thicknessUnit: GaugeSizeUnit.factor,
          ),
          pointers: const <GaugePointer>[
            RangePointer(
                value: 80,
                width: 0.29,
                sizeUnit: GaugeSizeUnit.factor,
                color: Colors.white,
                cornerStyle: CornerStyle.bothFlat)
          ],
          annotations: const <GaugeAnnotation>[
            GaugeAnnotation(
              verticalAlignment: GaugeAlignment.near,
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/sleep.png',),)
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
