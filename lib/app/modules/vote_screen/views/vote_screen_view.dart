import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vote_screen_controller.dart';

class VoteScreenView extends GetView<VoteScreenController> {
  const VoteScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VoteScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VoteScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
