import 'package:flutter/material.dart';
class Drawers extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title : Text('Drawer example')),
      body:Drawer(
  child: ListView(
    children: <Widget>[
      DrawerHeader(
        child: Text('Header'),
        decoration: BoxDecoration(color: Colors.blue),
      ),
      ListTile(
        title: Text('Item 1'),
        onTap: () {},
      ),
    ],
  ),
)
    );
  }
}
