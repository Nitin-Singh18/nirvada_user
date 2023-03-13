import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nirvada_user/app/data/widgets/xText.dart';

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
      body: const Center(
          child: XText(
        text: "Strinh texxt",
        size: 34,
        color: Colors.red,
      )),
    );
  }
}

//12, 14, 16, 18, 20, 24
