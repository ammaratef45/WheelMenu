import 'package:flutter/material.dart';
import 'dart:math';

import 'package:wheel_menu/arc_painter.dart';

class ArcButton extends StatelessWidget {
  final double startAngle;
  final double sweepAngle;
  Color color;
  final Widget child;
  final double width;
  final double radius;

  num degToRad(num deg) => deg * (pi / 180.0);

  Random _random = Random();

  ArcButton({
    Key key,
    this.startAngle = 0,
    this.sweepAngle = 100,
    this.color,
    this.child = const Center(),
    this.width = 60,
    this.radius = 120,
  }) : super(key: key) {
    this.color = this.color ??
        Colors.primaries[_random.nextInt(Colors.primaries.length - 1)];
  }

  @override
  Widget build(BuildContext context) {
    num angleStartRad = degToRad(startAngle);
    num angleSweepRad = degToRad(sweepAngle);
    return CustomPaint(
      painter: ArcPainter(angleStartRad, angleSweepRad, color, width),
      child: Container(
        height: radius,
        width: radius,
        padding: padding(angleStartRad, angleSweepRad),
        child: child,
      ),
    );
  }

  EdgeInsets padding(num angleStartRad, num angleSweepRad) {
    double angleHalf = angleStartRad + angleSweepRad / 2;
    double x = radius * cos(angleHalf);
    double y = radius * sin(angleHalf);
    return EdgeInsets.only(
      left: x > 0 ? x : 0,
      top: y > 0 ? y : 0,
      right: x < 0 ? x.abs() : 0,
      bottom: y < 0 ? y.abs() : 0,
    );
  }
}
