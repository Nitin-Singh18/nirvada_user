import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:nirvada_user/app/data/widgets/c_button.dart';
import 'package:nirvada_user/app/data/widgets/status_widget.dart';
import 'package:nirvada_user/app/data/widgets/xText.dart';

import '../controllers/status_screen_controller.dart';

class StatusScreenView extends GetView<StatusScreenController> {
  const StatusScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 14.h),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: XText(
                text: "Status -",
                size: 18.sp,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(text: "You have successfully\n"),
                      TextSpan(
                          text: "Voted !!",
                          style: TextStyle(color: Color(0xff046A38))),
                    ])),
            SizedBox(
              height: 20.h,
            ),
            Image.asset("assets/images/check.png"),
            SizedBox(
              height: 36.h,
            ),
            Row(
              children: [
                XText(
                    text: "Details",
                    size: 14.sp,
                    fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                    child: Container(
                  height: 1.h,
                  color: Colors.black,
                )),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            DetailsWidget(title: "Serial Number -", data: "12318788"),
            SizedBox(
              height: 6.h,
            ),
            DetailsWidget(title: "Voted Candidate -", data: "Narendra D. Modi"),
            SizedBox(
              height: 6.h,
            ),
            DetailsWidget(
                title: "Party Name -", data: "Bhartiya Janta Party (BJP)"),
            SizedBox(
              height: 40.h,
            ),
            CButton(
              title: "Go back to login",
              onTap: () {},
            ),
            SizedBox(
              height: 40.h,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                        color: Color(0xB31B1B1B),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(text: "Warning -\n"),
                      TextSpan(
                          text:
                              "This screen will automatically close in 10 seconds")
                    ]))
          ],
        ),
      )),
    );
  }
}
