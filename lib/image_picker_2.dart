import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImagePicker2 extends StatefulWidget {
  const ImagePicker2({Key? key}) : super(key: key);

  @override
  State<ImagePicker2> createState() => _ImagePicker2State();
}

class _ImagePicker2State extends State<ImagePicker2> {
  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          image != null
              ? Image.file(
                  image!,
                  height: 150,
                  width: 150,
                )
              : FlutterLogo(
                  size: 160,
                ),
          ElevatedButton(
            onPressed: () => pickImage(ImageSource.camera),
            child: Text(
              "camera",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              pickImage(ImageSource.gallery);
            },
            child: Text(
              "gallary",
            ),
          ),
        ],
      ),
    );
  }
}
