import 'package:flutter/material.dart';
import 'package:geetha/slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderExample(),
    );
  }
}
