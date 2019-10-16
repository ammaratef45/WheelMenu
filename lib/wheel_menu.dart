import 'package:flutter/material.dart';
import 'package:wheel_menu/arc_button.dart';

class WheelMenu extends StatelessWidget {
  final List<Icon> icons;

  const WheelMenu({Key key, this.icons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: arcs(),
    );
  }

  List<ArcButton> arcs() {
    List<ArcButton> res = [];
    double startAngle = 0;
    double step = 360 / icons.length;
    for (int i = 0; i < icons.length; i++) {
      res.add(ArcButton(
        child: icons[i],
        startAngle: startAngle,
        sweepAngle: step,
      ));
      startAngle += step;
    }
    return res;
  }
}
