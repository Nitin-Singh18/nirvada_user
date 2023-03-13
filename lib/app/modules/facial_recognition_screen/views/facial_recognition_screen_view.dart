import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/facial_recognition_screen_controller.dart';

class FacialRecognitionScreenView
    extends GetView<FacialRecognitionScreenController> {
  const FacialRecognitionScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FacialRecognitionScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FacialRecognitionScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
