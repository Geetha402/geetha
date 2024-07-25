import 'package:flutter/material.dart';


class Initstate extends StatefulWidget {
  @override
  _InitstateState createState() => _InitstateState();
}

class _InitstateState extends State<Initstate> {
  String _message = 'Hello, world!';

  @override
  void initState() {
    super.initState();
    // Perform initialization tasks here
    _message = 'Initialized!';
    print('initState called');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('initState Example'),
      ),
      body: Center(
        child: Text(_message),
      ),
    );
  }
}
