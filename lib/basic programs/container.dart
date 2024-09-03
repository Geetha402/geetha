

import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Containers concept')),
      body: Center(
        child: Container(
          height:200,
          width:200,
          decoration:BoxDecoration(
            
              color:Colors.grey[300],
              boxShadow:[
                BoxShadow(
                  color:Colors.grey.shade500,
                  offset:Offset(4.0,4.0),
                  spreadRadius:1.0,
                  blurRadius: 15.0),
                  BoxShadow(
                    color:Colors.white,
                    offset:Offset(-4.0,-4.0),
                    spreadRadius:1.0,
                    blurRadius: 15.0,
                  ),
              ]

            )
        ),
       
          )
        );
    
  }
}
