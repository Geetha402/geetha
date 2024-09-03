import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class SecureStorageDemo extends StatefulWidget {
  @override
  _SecureStorageDemoState createState() => _SecureStorageDemoState();
}

class _SecureStorageDemoState extends State<SecureStorageDemo> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final storage = FlutterSecureStorage();

  Future<void> _saveCredentials() async {
    await storage.write(key: 'username', value: _usernameController.text);
    await storage.write(key: 'password', value: _passwordController.text);
  }

  Future<void> _loadCredentials() async {
    String? username = await storage.read(key: 'username');
    String? password = await storage.read(key: 'password');

    if (username != null && password != null) {
      setState(() {
        _usernameController.text = username;
        _passwordController.text = password;
      });
    }
  }

  Future<void> _deleteCredentials() async {
    await storage.delete(key: 'username');
    await storage.delete(key: 'password');
    setState(() {
      _usernameController.clear();
      _passwordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secure Storage Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
            // primary: Colors.green, // Set the background color
          ),
              onPressed: _saveCredentials,
              child: Text('Save Credentials',style:TextStyle(color: Colors.white)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: _loadCredentials,
              child: Text('Load Credentials',style:TextStyle(color: Colors.white)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue),
              onPressed: _deleteCredentials,
              child: Text('Delete Credentials',style:TextStyle(color:Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
