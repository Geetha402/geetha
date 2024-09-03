import 'package:flutter/material.dart';

class MyIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.abc,
          size: 60,
        ),
        Text(
          'A tablet is a wireless touch screen computer that is smaller than a notebook but larger than a smartphone.',
          style: TextStyle(fontSize: 20.0),
          textAlign: TextAlign.center, // Center align the text
        )
      ],
    );
  }
}
