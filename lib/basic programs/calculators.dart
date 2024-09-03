import 'package:flutter/material.dart';

class Calculators extends StatelessWidget {
  const Calculators({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Calculators'),
      ),
      body: Container(
        color: Colors.white,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              color: Colors.grey,
              child: ListTile(
                title: Text(
                  'Mutual Fund Calculator',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(Icons.calculate),
                trailing: Icon(Icons.arrow_drop_down),
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: Text(
                  'SIP Calculator',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(Icons.calculate),
                trailing: Icon(Icons.arrow_drop_down),
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                title: Text(
                  'Human Resource Calculator',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(Icons.calculate),
                trailing: Icon(Icons.arrow_drop_down),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
