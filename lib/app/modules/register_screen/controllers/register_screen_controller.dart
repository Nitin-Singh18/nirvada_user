import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nirvada_user/app/modules/register_screen/functions/register_screen_function.dart';

class RegisterScreenController extends GetxController {
  final TextEditingController voterId = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();

  void onRegister() async {
    await RegisterFuntions.registerUser(voterId.text, phoneNumber.text);
  }
}
