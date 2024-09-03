import 'package:flutter/material.dart';


class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  // Define a list of items for the dropdown
  final List<String> _items = ['Apple', 'Banana', 'Cherry', 'Date', 'Elderberry'];

  // State variable to keep track of the selected item
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dropdown Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Please select a fruit'),
            const SizedBox(height: 20),
            // Create the dropdown button
            DropdownButton<String>(
              hint: const Text('Select an item'),
              value: _selectedItem,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem = newValue;
                });
              },
              items: _items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            _selectedItem == null
                ? const Text('No item selected')
                : Text('Selected item: $_selectedItem'),
          ],
        ),
      ),
    );
  }
}
