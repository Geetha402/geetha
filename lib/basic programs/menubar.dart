import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Menubar extends StatelessWidget {
  const Menubar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
title: Text("Menu Bar Example"),
 ) ,
 drawer: Drawer(
  child:ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
          color:Colors.blue,
        ), 
        child: Text("Menu",style: TextStyle(color: Colors.white,fontSize: 30),),),
ListTile(
  leading: Icon(Icons.home),
  title: Text("Home"),
  onTap: () {
    Navigator.pop(context);
  },
),
ListTile(
  leading: Icon(Icons.settings),
  title: Text("Settings"),
  onTap: (){
    Navigator.pop(context);
  }

),
ListTile(
  leading: Icon(Icons.contact_mail),
  title:Text("Contact Us"),
  onTap: (){
    Navigator.pop(context);
  },
)

    ],
  )
 ),
 body:Center(
  child: Text("Home Page"),
 )
    );
  }
}
// class MenuBarExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Menu Bar Example'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: const Text(
//                 'Menu',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: const Icon(Icons.home),
//               title: const Text('Home'),
//               onTap: () {
//                 Navigator.pop(context); // Close the drawer
//                 // Handle navigation or other actions
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.settings),
//               title: const Text('Settings'),
//               onTap: () {
//                 Navigator.pop(context); // Close the drawer
//                 // Handle navigation or other actions
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.contact_mail),
//               title: const Text('Contact Us'),
//               onTap: () {
//                 Navigator.pop(context); // Close the drawer
//                 // Handle navigation or other actions
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Center(
//         child: const Text('Menu Bar Example Home Page'),
//       ),
//     );
//   }
// }
