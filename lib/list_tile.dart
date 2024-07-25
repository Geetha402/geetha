import 'package:flutter/material.dart';



class Listtile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListTile Example'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Prasanthi'),
              subtitle: Text('Software Developer'),
              trailing: Icon(Icons.more_vert),
              onTap: () {
                // Handle tap
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Roja'),
              subtitle: Text('Graphic Designer'),
              trailing: Icon(Icons.more_vert),
              onTap: () {
                // Handle tap
              },
            ),
          ],
        ),
      );
  }
}
