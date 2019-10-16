import 'package:flutter/material.dart';
import 'package:wheel_menu/wheel_menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: WheelMenu(
              icons: [
                Icon(Icons.phone),
                Icon(Icons.mail),
                Icon(Icons.map),
                Icon(Icons.business),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
