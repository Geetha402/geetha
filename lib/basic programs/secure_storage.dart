import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';



class Secure extends StatefulWidget {
  @override
  _SecureState createState() => _SecureState();
}

class _SecureState extends State<Secure> {
  final storage = FlutterSecureStorage();
  String? _token;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Secure Storage Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _storeToken,
              child: Text('Store Token'),
              
            ),
            SizedBox(height:30),
            ElevatedButton(
              onPressed: _readToken,
              child: Text('Read Token'),
            ),
            SizedBox(height:30),
            ElevatedButton(
              onPressed: _deleteToken,
              child: Text('Delete Token'),
            ),
            SizedBox(height:30),
            if (_token != null) Text('Token: $_token'),
          ],
        ),
      ),
    );
  }

  Future<void> _storeToken() async {
    await storage.write(key: 'token', value: 'your_token_here');
    setState(() {
      _token = 'your_token_here';
    });
  }

  Future<void> _readToken() async {
    String? token = await storage.read(key: 'token');
    setState(() {
      _token = token;
    });
  }

  Future<void> _deleteToken() async {
    await storage.delete(key: 'token');
    setState(() {
      _token = null;
    });
  }
}
