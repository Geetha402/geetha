import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preference  extends StatefulWidget {
  const Preference({super.key});

  @override
  State<Preference> createState() => _PreferenceState();
}

class _PreferenceState extends State<Preference> {
  int _counter = 0;

  @override
  void initState(){
    super.initState();
    _loadCounter();
  }

  Future<void> _loadCounter() async{ 
  final prefs = await SharedPreferences.getInstance(); 
  setState(() {
    _counter = prefs.getInt('Counter') ?? 0; 
  }); 
  }
  Future<void> _incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter++;
    });
    await prefs.setInt('counter', _counter);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Shared Preferences Example"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have pressed the Floating Action Button this  many times"),
            SizedBox(height:30),
            Text('$_counter',style:TextStyle(color:Colors.red[400]) ,),
          ],
        ),
        
      ),
floatingActionButton: FloatingActionButton(
  onPressed: _incrementCounter,
  tooltip:"Increment",
  child: Icon(Icons.add),
  ),
    );
  }
}