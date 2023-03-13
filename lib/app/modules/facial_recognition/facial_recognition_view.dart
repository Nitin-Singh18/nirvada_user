import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class TwoBoxImagePicker extends StatefulWidget {
  const TwoBoxImagePicker({super.key});

  @override
  _TwoBoxImagePickerState createState() => _TwoBoxImagePickerState();
}

class _TwoBoxImagePickerState extends State<TwoBoxImagePicker> {
  File? _image1;
  File? _image2;

  Future<void> _pickImage(ImageSource source, int boxNumber) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        if (boxNumber == 1) {
          _image1 = File(pickedFile.path);
        } else if (boxNumber == 2) {
          _image2 = File(pickedFile.path);
        }
      });
    }
  }

  void compareImages() async {
    Uri url = Uri.parse("https://api-us.faceplusplus.com/facepp/v3/compare");

    String realFace =
        "https://drive.google.com/file/d/1RVxTV44CJRozWjJedyxSzzW5PoW4hs5l/view?usp=share_link";

    String fakeFace =
        "https://drive.google.com/file/d/1RjvOGQI7lmmh6yD8vAqjjc6MpXviNGRj/view?usp=share_link";

    Map<String, dynamic> body = {
      "api_key": "kgpQs8Gbjtt2gMb60w9OQUGWPV_wTjR-",
      "api_secret": "gTfbB1Ttt7K9wX6EU_-ERB4b5Yt_GZeE",
      "image_url1":
          "https://firebasestorage.googleapis.com/v0/b/chat-app-9ad44.appspot.com/o/divyanshu.jpg?alt=media&token=fd791c64-8009-42de-86c8-87e04c4be9b7",
      "image_url2":
          "https://firebasestorage.googleapis.com/v0/b/chat-app-9ad44.appspot.com/o/Dv.jpg?alt=media&token=2b573103-e81f-41b7-a594-895064ab8651",
    };

    final response = await http.post(
      url,
      body: body,
    );

    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Two Box Image Picker')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => _pickImage(ImageSource.gallery, 1),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: _image1 == null
                        ? Icon(Icons.add, size: 50)
                        : Image.file(_image1!, fit: BoxFit.cover),
                  ),
                ),
                GestureDetector(
                  onTap: () => _pickImage(ImageSource.gallery, 2),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: _image2 == null
                        ? Icon(Icons.add, size: 50)
                        : Image.file(_image2!, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                compareImages();
              },
              child: Text("Compare"),
            ),
          ],
        ),
      ),
    );
  }
}
