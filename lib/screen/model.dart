import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'user.dart';
class Model extends StatefulWidget {
  const Model({super.key});

  @override
  State<Model> createState() => _ModelState();
}

class _ModelState extends State<Model> {
  List<User>users =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Rest API Call') ,
      ),
      body:ListView.builder(
        itemCount:users.length ,
        itemBuilder: (context, index){
          final user = users[index];
          
          
          //  final color= user.gender=='male'?Colors.blue : Colors.green;
        return ListTile(
        
          title: Text(user.name.first),
          subtitle:Text(user.phone),
          // tileColor:color,
        ); 
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchUsers,
        ),
    );
  }
  void fetchUsers() async {
    print('fetchusers called');
    const url='https://randomuser.me/api/?results=100';
    final uri=Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final transformed = results.map((e){
      final name = UserName(
        title: e['name']['title'],
         first: e['name']['first'],
          last:e['name'] ['last'],);
      return User(
        cell:e['cell'],
        phone:e['phone'],
        email:e['email'],
        gender:e['gender'],
        nat:e['nat'], 
        name:name,
        );
          
    }).toList();
    setState(() {
      users = transformed;
      
    });
    print('fetch users completed');
  }
}