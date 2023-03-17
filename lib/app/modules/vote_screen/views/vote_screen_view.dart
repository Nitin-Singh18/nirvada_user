import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nirvada_user/app/data/widgets/c_button.dart';
import 'package:nirvada_user/app/models/CandidateModel.dart';
import 'package:nirvada_user/app/routes/app_pages.dart';
import '../../../data/widgets/xText.dart';
import '../controllers/vote_screen_controller.dart';

class VoteScreenView extends GetView<VoteScreenController> {
  final CandidateModel candidate =
      CandidateModel.fromJson(Get.arguments['candidate']);
  final String authId = Get.arguments['authId'];

  VoteScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 70,
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
                    size: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                  XText(
                    text: "2:24:23",
                    size: 14,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const XText(
                text: "  Vote Here-",
                size: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 5.h),
              height: 240.h,
              width: 240.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(candidate.candidateImage.toString()),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            XText(
              size: 20,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              text: "Narendra D.Modi",
            ),
            XText(
              size: 18,
              color: Colors.black54,
              fontWeight: FontWeight.w600,
              text: candidate.location.split('/').last,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25.w),
                  width: 200,
                  height: 70,
                  child: XText(
                    size: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    text: candidate.partyName,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.h, left: 30.h),
                  height: 70.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(candidate.partySign.toString()),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            LButton(
                title: "VOTE",
                onTap: () {
                  controller.onVote(authId, candidate.id);
                }),
            SizedBox(
              height: 20.h,
            ),
            CButton(
                title: "Go back",
                onTap: () {
                  Get.offAllNamed(Routes.HOME);
                }),
            SizedBox(
              height: 20.h,
            ),
            XText(
              size: 12,
              color: Colors.black54,
              fontWeight: FontWeight.w600,
              text: "Instruction -",
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              width: 340,
              child: XText(
                size: 12,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
                text:
                    "Click on the vote (green) to cast your vote or click on go back (blue) to select another candidate.",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
