import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nirvada_user/app/modules/register_screen/functions/register_screen_function.dart';
import 'package:nirvada_user/app/routes/app_pages.dart';

class RegisterScreenController extends GetxController {
  final TextEditingController voterId = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  bool isLoading = false;

  void onRegister() async {
    isLoading = true;
    update();
    await RegisterFuntions.registerUser(voterId.text, phoneNumber.text);
    isLoading = false;
    Get.toNamed(Routes.LOGIN_SCREEN);
  }
}
