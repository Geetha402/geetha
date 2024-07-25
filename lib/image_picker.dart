import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
class ImagePickerExample extends StatefulWidget {
  const ImagePickerExample({super.key});

  @override
  State<ImagePickerExample> createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
  File? _image;
  Future<void>_pickImage(ImageSource source) async{
    final picker=ImagePicker();
    final PickedFile = await picker.pickImage(source: source);

    if (PickedFile != null){
      setState(() {
        _image = File(PickedFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text("Image picker Example"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image == null? Text("No image is selected") : Image.file(_image!),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => _pickImage(ImageSource.camera),
               child: Text("Pick image from camera")),
               SizedBox(height:30),
               ElevatedButton(
                onPressed: () =>_pickImage(ImageSource.gallery) ,
                 child: Text("Pick image from gallery")),
          ],
        ),
      )

    );
  }
}

// class ImagePickerExample extends StatefulWidget {
//   @override
//   _ImagePickerExampleState createState() => _ImagePickerExampleState();
// }

// class _ImagePickerExampleState extends State<ImagePickerExample> {
//   File? _image;

//   Future<void> _pickImage(ImageSource source) async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: source);

//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("Geetha");
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Image Picker Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             _image == null
//                 ? const Text('No image selected.')
//                 : Image.file(_image!),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _pickImage(ImageSource.camera),
//               child: const Text('Pick Image from Camera'),
//             ),
//             const SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () => _pickImage(ImageSource.gallery),
//               child: const Text('Pick Image from Gallery'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

