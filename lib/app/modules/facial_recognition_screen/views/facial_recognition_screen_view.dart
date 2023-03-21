import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/facial_recognition_screen_controller.dart';

class FacialRecognitionScreenView
    extends GetView<FacialRecognitionScreenController> {
  FacialRecognitionScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Facial Recognition')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => controller.showImagePickerDialog(1),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: GetBuilder<FacialRecognitionScreenController>(
                        builder: (controller) {
                      return controller.image1 == null
                          ? const Icon(Icons.add, size: 50)
                          : Image.file(controller.image1!, fit: BoxFit.cover);
                    }),
                  ),
                ),
                GestureDetector(
                  onTap: () => controller.showImagePickerDialog(2),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: GetBuilder<FacialRecognitionScreenController>(
                        builder: (controller) {
                      return controller.image2 == null
                          ? const Icon(Icons.add, size: 50)
                          : Image.file(controller.image2!, fit: BoxFit.cover);
                    }),
                  ),
                ),
              ],
            ),
            GetBuilder<FacialRecognitionScreenController>(
                builder: (controller) {
              if (controller.matchPercentage.isNotEmpty) {
                return Text("Matched : ${controller.matchPercentage}%");
              } else {
                return SizedBox();
              }
            }),
            Obx(() {
              if (controller.isLoading.value) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ElevatedButton(
                  onPressed: () {
                    controller.onCompare();
                  },
                  child: const Text("Compare"),
                );
              }
            }),
          ],
        ),
      ),
    );
  }
}
