import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nirvada_user/app/data/widgets/c_button.dart';
import '../../../data/widgets/xText.dart';
import '../controllers/vote_screen_controller.dart';

class VoteScreenView extends GetView<VoteScreenController> {
  const VoteScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.centerRight,
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff1b1b1b),
                              ),
                              children: [
                            TextSpan(
                                text: "Time Left : ",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff1b1b1b),
                                )),
                            TextSpan(
                              text: "2:34",
                            )
                          ]))),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: XText(
                      text: "Vote here -",
                      size: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 48.h),
                  Container(
                    height: 140.h,
                    width: 140.h,
                    child: Image.asset("assets/images/image5.png"),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
                  ),
                  SizedBox(height: 12.h),
                  XText(
                    text: "Narendra D. Modi",
                    size: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  XText(
                    text: "Bhartiya Janta Party",
                    size: 14.sp,
                    isLight: true,
                  ),
                  SizedBox(height: 38.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      XText(
                        text: "Bhartiya Janta\nParty",
                        size: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      Icon(Icons.arrow_forward),
                      Container(
                          height: 100.h,
                          width: 100.h,
                          child: Image.asset("assets/images/image4.png")),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  LButton(title: "Vote", onTap: () {
                    controller.showDialog();
                  }),
                  SizedBox(
                    height: 18.h,
                  ),
                  CButton(
                    title: "Go back to login",
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  XText(
                    isCenter: true,
                    text: '''Instruction - 
Click on the vote (green) to cast your vote or click on 
go back (blue) to select another candidate.''',
                    size: 10.sp,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
