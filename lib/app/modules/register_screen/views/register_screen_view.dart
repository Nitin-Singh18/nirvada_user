import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nirvada_user/app/data/widgets/appNameText.dart';
import 'package:nirvada_user/app/data/widgets/c_button.dart';
import 'package:nirvada_user/app/data/widgets/custom_textfield.dart';
import 'package:nirvada_user/app/data/widgets/xText.dart';
import 'package:nirvada_user/app/routes/app_pages.dart';
import '../controllers/register_screen_controller.dart';

class RegisterScreenView extends GetView<RegisterScreenController> {
  const RegisterScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 26.h,
                  ),
                  AppNameText(),
                  XText(
                    text: "Be a responsible citizen",
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  XText(
                    text: "Register yourself",
                    size: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  XText(
                    text: "Enter your details to register in app",
                    isLight: true,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomTextField(
                      title: "Voter ID",
                      hintText: "Enter your voter ID here",
                      controller: controller.voterId),
                  SizedBox(
                    height: 26.h,
                  ),
                  CustomTextField(
                      title: "Phone Number",
                      hintText: "Enter your registered phone number",
                      controller: controller.phoneNumber),
                  SizedBox(
                    height: 32.h,
                  ),
                  CButton(
                      title: "REGISTER",
                      onTap: () {
                        controller.onRegister();
                      }),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      XText(
                        text: "Need help?",
                        color: Color(0xff06038D),
                      ),
                      XText(
                        text: 'Contact us at 18XX.',
                      )
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
