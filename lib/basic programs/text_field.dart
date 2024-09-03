import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TextField Example')),
      body: Center(
        child:TextField(
  decoration: InputDecoration(
    labelText: 'Enter your name',
  ),
),
        
      ),
    );
  }
}






















