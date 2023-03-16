import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nirvada_user/app/modules/login_screen/functions/login_screen_function.dart';

class LoginScreenController extends GetxController {
  final TextEditingController authID = TextEditingController();
  final TextEditingController password = TextEditingController();

  void onlogin() async {
    await LoginFuntion.loginUser(authID.text, password.text);
  }
}


