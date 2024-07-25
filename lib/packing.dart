import 'package:flutter/material.dart';

class Packing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row Example'),
        ),
        body: Center(
          child: ratings, // Use the ratings container as the body
        ),
      ),
    );
  }
}
    // Create a row of star icons
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );

    // Create a container with padding and a row of stars and text
    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

   

