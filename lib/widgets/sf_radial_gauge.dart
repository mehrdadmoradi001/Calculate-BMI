import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

Widget SFRadialGauge(double markerPointer){
  double _elevation = 4;


  return SfRadialGauge(
    axes: <RadialAxis>[
      RadialAxis(
          startAngle: 180,
          endAngle: 360,
          radiusFactor: 0.9,
          canScaleToFit: true,
          interval: 10,
          showLabels: false,
          showAxisLine: false,
          pointers: <GaugePointer>[
            MarkerPointer(
                value: markerPointer,
                elevation: _elevation,
                markerWidth: 35,
                markerHeight: 35,
                color: const Color(0xFF000664),
                markerOffset: -9)
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                angle: 175,
                positionFactor: 0.8,
                widget: Text('شاخص منفی',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold))),
            GaugeAnnotation(
                angle: 270,
                positionFactor: 0.1,
                widget: Text('70%',
                    style: TextStyle(
                        fontSize:  12,
                        fontWeight: FontWeight.bold))),
            GaugeAnnotation(
                angle: 5,
                positionFactor: 0.8,
                widget: Text('شاخص مثبت',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold)))
          ],
          ranges: <GaugeRange>[
            GaugeRange(
              startValue: 0,
              endValue: 100,
              sizeUnit: GaugeSizeUnit.factor,
              gradient: const SweepGradient(
                  colors: <Color>[Color(0xFFD6D6D6),Color(0xFF4CAF50), Color(0xFFD84315)],
                  stops: <double>[0.25,0.50, 0.75]),
              startWidth: 0.4,
              endWidth: 0.4,
              color: const Color(0xFFE0F2F1),
            )
          ],
          showTicks: false),
    ],
  );
}