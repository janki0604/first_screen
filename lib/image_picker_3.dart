import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImagePicker3 extends StatefulWidget {
  const ImagePicker3({Key? key}) : super(key: key);

  @override
  State<ImagePicker3> createState() => _ImagePicker3State();
}

class _ImagePicker3State extends State<ImagePicker3> {
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
      body: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipOval(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.black12,
                    child: image != null
                        ? Image.file(
                            image!,
                            height: 150,
                            width: 150,
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
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.white70,
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                        ),
                      ),
                      builder: (context) {
                        return SizedBox(
                          height: 100,
                          child: Row(
                            children: [
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
                      },
                    );
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
            // ElevatedButton(
            //   onPressed: () => pickImage(ImageSource.camera),
            //   child: Text(
            //     "camera",
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     pickImage(ImageSource.gallery);
            //   },
            //   child: Text(
            //     "gallary",
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
