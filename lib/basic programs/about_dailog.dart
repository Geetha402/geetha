import 'package:flutter/material.dart';

class AboutDailog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:ElevatedButton(
              child: const Text('Show About Dailog'),
              onPressed: () {
                showDialog(
                  context:context,
                  builder:(context) => const AboutDialog(
                    applicationIcon:FlutterLogo(),
                    applicationLegalese:'Legalese',
                    applicationName:'Flutter App',
                    applicationVersion:'version 1.0.0',
                    children:[
                      Text('This is a text created by flutter app'),
                    ],

                  ),
                );
              },
            ),
          
        );
      
    
  }
}

