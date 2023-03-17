import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nirvada_user/app/data/widgets/candidate_title.dart';
import '../../../data/widgets/xText.dart';
import '../controllers/home_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends GetView<HomeController> {
  final authId = Get.arguments;
  HomeView({Key? key}) : super(key: key);
  @override
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
                children: [
                  XText(
                    text: "Time left : ",
                    size: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                  GetBuilder<HomeController>(
                    builder: (controller) {
                      return XText(
                        text: controller.start.toString(),
                        size: 14,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      );
                    },
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
                size: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<HomeController>(
          builder: (controller) {
            if (!controller.isLoading) {
              return ListView.builder(
                itemCount: controller.candidateData.length,
                itemBuilder: (context, index) {
                  final candidate = controller.candidateData[index];
                  return CandidateTile(
                    candidate: candidate,
                    authId: authId,
                  );
                },
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
