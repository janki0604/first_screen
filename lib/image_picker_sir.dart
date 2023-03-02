import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerSir extends StatefulWidget {
  const ImagePickerSir({Key? key}) : super(key: key);

  @override
  State<ImagePickerSir> createState() => _ImagePickerSirState();
}

class _ImagePickerSirState extends State<ImagePickerSir> {
  final ImagePicker picker = ImagePicker();
  XFile? imageFile;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  imageFile = await picker.pickImage(
                    source: ImageSource.camera,
                    imageQuality: 100,
                  );
                  setState(() {});
                  debugPrint(
                      "imageFile!.path ------------>>> ${imageFile!.path}");
                },
                child: Text("select from camera"),
              ),
              ElevatedButton(
                onPressed: () async {
                  imageFile = await picker.pickImage(
                    source: ImageSource.gallery,
                    imageQuality: 100,
                    maxHeight: 200,
                    maxWidth: 200,
                  );
                  setState(() {});
                  debugPrint(
                      "imageFile!.path ------------>>> ${imageFile!.path}");
                },
                child: Text("select from gallery"),
              ),
              imageFile == null
                  ? SizedBox()
                  : Image.file(
                      File(imageFile!.path),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
