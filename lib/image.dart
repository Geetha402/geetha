

import 'package:flutter/material.dart';


class Images extends StatelessWidget {                
  @override
  Widget build(BuildContext context) {
    print("this geetha");
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text('Flutter layout demo')),
        body: Column(
          children: [
            Image.asset('assets/a.png'),
            ListTile(
              title: Text('Oeschinen Lake Campground',style: TextStyle(
              fontWeight: FontWeight.bold)),
              subtitle: Text('Kandersteg,Swizerland'),
              trailing: Row(
                mainAxisSize:MainAxisSize.min,
                children: [
                  Icon(Icons.star,color:Colors.red),
                  Text('41'),
                ],
              ),
            
            
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Icon(Icons.phone,color:Colors.purple),
              Icon(Icons.near_me,color:Colors.purple),
              Icon(Icons.share,color:Colors.purple),
            ],),
            SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('CALL',style:TextStyle(color:Colors.purple)),
                Text('ROUTE',style:TextStyle(color:Colors.purple)),
                Text('SHARE',style:TextStyle(color:Colors.purple)),
              ],
            ),
            SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the '
              'Bernese Alps. Situated 1,578 meters above sea level, it '
              'is one of the larger Alpine Lakes. A gondola ride from '
              'Kandersteg, followed by a half-hour walk through pastures '
              'and pine forest, leads you to the lake, which warms to 20 '
              'degrees Celsius in the summer. Activities enjoyed here '
              'include rowing, and riding the summer toboggan run.',),
            ) 
          ],
        ),

      );
    
    
  }
}
