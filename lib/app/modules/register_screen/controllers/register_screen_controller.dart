import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nirvada_user/app/modules/qr_screen/functions/qr_funtions.dart';
import 'package:nirvada_user/app/modules/register_screen/functions/register_screen_function.dart';
import 'package:nirvada_user/app/routes/app_pages.dart';

class RegisterScreenController extends GetxController {
  final TextEditingController voterId = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  bool isLoading = false;

  void onRegister() async {
    isLoading = true;
    update();
    String voterID =
        await RegisterFuntions.registerUser(voterId.text, phoneNumber.text);
    QRFucntions.encrypt(voterID);
    isLoading = false;
    Get.toNamed(Routes.QR_SCREEN);
  }
}
