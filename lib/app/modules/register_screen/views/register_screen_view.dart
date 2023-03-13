import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:nirvada_user/app/data/widgets/custom_textfield.dart';
import 'package:nirvada_user/app/data/widgets/xText.dart';

import '../controllers/register_screen_controller.dart';

class RegisterScreenView extends GetView<RegisterScreenController> {
  const RegisterScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 26.h,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
                children: [
                  TextSpan(
                    text: 'N',
                    style: TextStyle(color: Color(0xffFF671F)),
                  ),
                  TextSpan(
                    text: 'r',
                    style: TextStyle(color: Color(0xffFF671F)),
                  ),
                  TextSpan(
                    text: 'i',
                    style: TextStyle(color: Color(0xffFF671F)),
                  ),
                  TextSpan(
                    text: 'v',
                    style: TextStyle(color: Color(0xff06038D)),
                  ),
                  TextSpan(
                    text: 'ā',
                    style: TextStyle(color: Color(0xff046A38)),
                  ),
                  TextSpan(
                    text: 'd',
                    style: TextStyle(color: Color(0xff046A38)),
                  ),
                  TextSpan(
                    text: 'a',
                    style: TextStyle(color: Color(0xff046A38)),
                  ),
                ],
              ),
            ),
            XText(
              text: "Be a responsible citizen", fontFamily: 'Poppins',
            ),
            SizedBox(
              height: 60.h,
            ),
            XText(
              text: "Register yourself",
              size: 24,
              fontWeight: FontWeight.w600, fontFamily: 'Poppins',
            ),
            XText(
              text: "Enter your details to register in app",
              isLight: true, fontFamily: 'Poppins',
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
            Container(
              height: 50.h,
              width: 320.w,
              alignment: Alignment.center,
              child: XText(
                text: "REGISTER",
                color: Colors.white,
                size: 18.sp, 
                fontFamily: 'Poppins',
              ),
              decoration: BoxDecoration(
                  color: Color(0xff06038D),
                  borderRadius: BorderRadius.circular(6.r)),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                XText(
                  text: "Need help?",
                  color: Color(0xff06038D), 
                  fontFamily: 'Poppins',
                ),
                XText(text: 'Contact us at 18x.', fontFamily: 'Poppins',)
              ],
            )
          ]),
        ),
      ),
    );
  }
}
