
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print("Geeths");
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter  logo '),
      ),
      body:Center(
        child:Container(
          height:100,
          width:100,
          color:Colors.blue,
          child:Align(
            alignment:FractionalOffset(0.2, 0.3),
            child:FlutterLogo(size: 50,),),
            
        )
      )
    );
  }
}