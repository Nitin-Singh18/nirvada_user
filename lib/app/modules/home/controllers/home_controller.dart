import 'dart:async';

import 'package:get/get.dart';
import 'package:nirvada_user/app/models/CandidateModel.dart';
import 'package:nirvada_user/app/routes/app_pages.dart';

import '../functions/home_screen_function.dart';

class HomeController extends GetxController {
  int start = 10;
  late Timer timer;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    timer = new Timer.periodic(oneSec, (timer) {
      if (start == 0) {
        Get.offAllNamed(Routes.LOGIN_SCREEN);
      } else {
        start--;
        update();
      }
    });
  }

  List<CandidateModel> candidateData = [];
  void onTap() async {
    candidateData = (await HomeFuntion.candidateDetails())!;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    onTap();
    startTimer();
  }

  @override
  void onClose() {
    super.onClose();
    timer.cancel();
  }
}
