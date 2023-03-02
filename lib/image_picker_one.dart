import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

enum ImageSourceType { gallery, camera }

class ImageFromGalleryEx extends StatefulWidget {
  final type;
  ImageFromGalleryEx(this.type);

  @override
  ImageFromGalleryExState createState() => ImageFromGalleryExState(this.type);
}

class ImageFromGalleryExState extends State<ImageFromGalleryEx> {
  var _image;
  var imagePicker;
  var type;

  ImageFromGalleryExState(this.type);

  @override
  void initState() {
    super.initState();
    imagePicker = ImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(type == ImageSourceType.camera
              ? "Image from Camera"
              : "Image from Gallery")),
      body: Column(
        children: [
          SizedBox(
            height: 52,
          ),
          Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipOval(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.black12,
                    child: _image != null
                        ? Image.file(
                            _image,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          )
                        : Icon(
                            Icons.person,
                            size: 60,
                            color: Colors.grey,
                          ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    var source = type == ImageSourceType.camera
                        ? ImageSource.camera
                        : ImageSource.gallery;
                    XFile image = await imagePicker.pickImage(
                        source: source,
                        imageQuality: 50,
                        preferredCameraDevice: CameraDevice.front);

                    setState(() {
                      _image = File(image.path);
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Color(0xFF234F68), shape: BoxShape.circle),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
