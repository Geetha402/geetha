import 'package:flutter/material.dart';
class Vertical extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return Scaffold(
    body:Row(
      children: [
        Container(
          width:100,
          color:Colors.deepPurple[600],
          ),
          Container(
            width:100,
            color:Colors.deepPurple[400],
          ),
          Container(
            width:100,
          color:Colors.deepPurple[200],
                    ),
                    
                    
      ],
    ),
  );
}
}