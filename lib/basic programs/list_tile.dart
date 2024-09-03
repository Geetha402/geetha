import 'package:flutter/material.dart';

class Listtile extends StatelessWidget {
  const Listtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile Example'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Prasanthi'),
            subtitle: const Text('Software Developer'),
            trailing: const Icon(Icons.more_vert),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Roja'),
            subtitle: const Text('Graphic Designer'),
            trailing: const Icon(Icons.more_vert),
            onTap: () {
              // Handle tap
            },
          ),
        ],
      ),
    );
  }
}
