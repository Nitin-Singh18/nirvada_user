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

    print(voterId.text);
    print(phoneNumber.text);
    String adhaar =
        await RegisterFuntions.registerUser(voterId.text, phoneNumber.text);
    // print(adhaar);

    QRFucntions.encrypt(adhaar);
    isLoading = false;
    Get.toNamed(Routes.QR_SCREEN);
  }
}
