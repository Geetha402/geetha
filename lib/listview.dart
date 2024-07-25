import 'package:flutter/material.dart';


class Listviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('listview Example'),
        ),
        body: Center(
          child: ListView(
  children: <Widget>[
    ListTile(
      leading: Icon(Icons.map),
      title: Text('Map'),
    ),
    ListTile(
      leading: Icon(Icons.photo),
      title: Text('Photo'),
    ),
    ListTile(
      leading: Icon(Icons.phone),
      title: Text('Phone'),
    ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child:Container(
        height: 200,
        color:Colors.deepPurple[200],
      ),
      ),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child:Container(
        height: 200,
        color:Colors.deepPurple[200],
      ),
      ),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child:Container(
        height: 200,
        color:Colors.deepPurple[200],
      ),
      ),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child:Container(
        height: 200,
        color:Colors.deepPurple[200],
      ),
      ),
  ],
),


        ),
      ),
    );
  }
}
