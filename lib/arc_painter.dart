import 'package:flutter/material.dart';

class ArcPainter extends CustomPainter {
  final double startAngle;
  final double sweepAngle;
  final Color color;
  final double width;

  ArcPainter(this.startAngle, this.sweepAngle, this.color, this.width);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    Path path = Path();

    path.addArc(
      Rect.fromLTWH(
        0.0,
        0.0,
        size.width,
        size.height,
      ),
      startAngle,
      sweepAngle,
    );
    canvas.drawShadow(path, color, 10, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
