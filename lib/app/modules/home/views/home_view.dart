import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nirvada_user/app/Const/Widgets/xText.dart';

import '../controllers/home_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 90,
        flexibleSpace: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                   XText(
                    text: "Time left : ",
                    fontFamily: "Poppins",
                    size: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                  XText(
                    text: "2:24:23",
                    fontFamily: "Poppins",
                    size: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const XText(
                text: "  Select your candidate -",
                fontFamily: "Poppins",
                size: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: XText(
          text: "Strinh texxt",
          size: 34,
          color: Colors.red,
        )
      ),
    );
  }
}

//12, 14, 16, 18, 20, 24
