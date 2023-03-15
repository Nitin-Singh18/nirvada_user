import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nirvada_user/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(Routes.FACIAL_RECOGNITION_SCREEN);
          },
          child: Text("Press"),
        ),
      ),
    );
  }
}
