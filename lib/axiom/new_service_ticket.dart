import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geetha/axiom/caption_text.dart';
import 'package:geetha/axiom/input_field.dart';
import 'package:geetha/axiom/simple_appbar.dart';
import 'package:geetha/axiom/spaced_column.dart';
import 'package:geetha/axiom/type_utils.dart';

class NewServiceTicket extends StatefulWidget {
  NewServiceTicket({super.key});

  @override
  State<NewServiceTicket> createState() => _NewServiceTicketState();

  final Map<String, TextEditingController> controllers = {};
}

class _NewServiceTicketState extends State<NewServiceTicket> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: ('New Service Ticket'),
        textColor: Colors.blue,
        status: 'Not Saved',
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: SpacedColumn(
            margin: const EdgeInsets.all(12.0),
            defaultHeight: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputField(
                title: 'Customer',
                inputType: TextInputType.name,
              ),
              InputField(
                title: 'Customer Phone',
                suffixIcon: const Icon(Icons.dialpad_outlined),
                maxLength: 10,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                ],
                inputType: TextInputType.number,
              ),
              InputField(
                title: 'City',
              ), 
              InputField(
                title: 'State',
              ),
              InputField(
                title: 'Pincode',
              ),
              InputField(
                title: 'Assigned To',
              ),
              InputField(
                title: 'Assigned User Name',
              ),
              CheckboxListTile(
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value ?? false;
                  });
                },
                activeColor: Colors.black,
                checkboxShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                isThreeLine: false,
                dense: true,
                contentPadding: EdgeInsets.zero,
                title: const CaptionText(
                    title:'Is Serial No. Available?', isRequired: false),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              if (_isChecked.isTrue) ...[
                InputField(
                  title: 'Serial No.',
                ),
              ],
              InputField(
                title: 'Item',
              ),
              InputField(
                title: 'Opening Date',
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 163, vertical: 15),
                    backgroundColor:Colors.blue),
                onPressed: () {},
                child: const Text(
                  'Create',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
