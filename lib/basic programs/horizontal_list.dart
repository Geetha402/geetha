import 'package:flutter/material.dart';



class Horizontal_list extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';

    return  Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Container(
           height: 200,
          child: ListView(
              scrollDirection: Axis.horizontal,
            // This next line does the trick.
            children: <Widget>[
              Container(
                width: 160,
                color: Colors.red,
              ),
              Container(
                width: 160,
                color: Colors.blue,
              ),
              Container(
                width: 160,
                color: Colors.green,
              ),
              Container(
                width: 160,
                color: Colors.yellow,
              ),
              Container(
                width: 160,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      );
    
  }
}