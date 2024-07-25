import 'package:flutter/material.dart';
import 'package:geetha/cards1.dart';


class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          title: Text('Complex Card Example'),
        ),
        body: Center(
          child: Card(
            elevation: 10,
            color:Colors.blue,
            
            child:Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget> [
                       const SizedBox(height: 8),
                     const Text('This is a Flutter card.'),
                    TextButton(
                      child: Text('Press'),
                      onPressed: () {
                        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cards1()),
                );
                      },
                    ),
                  ],
                ),
            ),
          ),
        ),
    
    );
  }
}
