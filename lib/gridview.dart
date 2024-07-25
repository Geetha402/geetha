import 'package:flutter/material.dart';


class Gridviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gridview Example'),
        ),
        body:GridView.count(crossAxisCount:2,
        children:[
          Padding(
            padding:const EdgeInsets.all(8.0),
            child:Container(
              height:50,width:50,
              color:Colors.blue,
              ),
              ),
              Padding(
            padding:const EdgeInsets.all(8.0),
            child:Container(
              height:50,width:50,
              color:Colors.red,
              ),
              ),
              Padding(
            padding:const EdgeInsets.all(8.0),
            child:Container(
              height:50,width:50,
              color:Colors.yellow,
              ),
              ),
              
              Padding(
            padding:const EdgeInsets.all(8.0),
            child:Container(
              height:50,width:50,
              color:Colors.black,
              ),
              ),
              Padding(
            padding:const EdgeInsets.all(8.0),
            child:Container(
              height:50,width:50,
              color:Colors.blue,
              ),
              ),
              Padding(
            padding:const EdgeInsets.all(8.0),
            child:Container(
              height:50,width:50,
              color:Colors.yellow,
              ),
              ),
              Padding(
            padding:const EdgeInsets.all(8.0),
            child:Container(
              height:50,width:50,
              color:Colors.red,
              ),
              ),
              Padding(
            padding:const EdgeInsets.all(8.0),
            child:Container(
              height:50,width:50,
              color:Colors.blue,
              ),
              ),
              Padding(
            padding:const EdgeInsets.all(8.0),
            child:Container(
              height:50,width:50,
              color:Colors.red,
              ),
              ),
              Padding(
            padding:const EdgeInsets.all(8.0),
            child:Container(
              height:50,width:50,
              color:Colors.yellow,
              ),
              ),
              Padding(
            padding:const EdgeInsets.all(8.0),
            child:Container(
              height:50,width:50,
              color:Colors.blue,
              ),
              ),
              Padding(
            padding:const EdgeInsets.all(8.0),
            child:Container(
              height:50,width:50,
              color:Colors.red,
              ),
              ),

              ],
     

        ),
      ),
    );
  }
}
