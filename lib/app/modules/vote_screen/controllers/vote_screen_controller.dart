import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nirvada_user/app/data/widgets/xText.dart';

import '../../../routes/app_pages.dart';

class VoteScreenController extends GetxController {

  final count = 0.obs;

  void showDialog(){
    Get.dialog(
      AlertDialog(
        title: XText(
          text: "Confirm your vote",
          size: 14.sp,
          fontWeight: FontWeight.w600,
        ),
        actions: [
          TextButton(
          onPressed: (){
            Get.toNamed(Routes.STATUS_SCREEN);
          }, child: XText(
          text: "Confirm",
          size: 12.sp,
          fontWeight: FontWeight.w600,
          color: Color(0xff046A38),
        ), )
        ],
      )
    );
  }
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
