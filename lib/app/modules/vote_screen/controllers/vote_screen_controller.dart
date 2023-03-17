import 'package:get/get.dart';
import 'package:nirvada_user/app/modules/vote_screen/functions/vote_function.dart';

class VoteScreenController extends GetxController {
  void onVote(String id, String voterId) async {
    await VoteFunction.castVote(id, voterId);
  }
}
