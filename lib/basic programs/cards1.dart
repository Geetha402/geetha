import 'package:flutter/material.dart';

class Cards1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Introduction')),
      body: Center(
        child: Column(
          
          children: <Widget>[
            Text('In Flutter, a `Card` widget provides a container with rounded corners and an elevation effect to visually group related content.'),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Go Back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            

          ],
        ),
      ),
    );
  }
}
