import 'package:get/get.dart';
import 'package:nirvada_user/app/models/CandidateModel.dart';

import '../functions/home_screen_function.dart';

class HomeController extends GetxController {
  List<CandidateModel> candidateData = [];
  void onTap() async {
    candidateData = (await HomeFuntion.candidateDetails())!;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    onTap();
  }
}
