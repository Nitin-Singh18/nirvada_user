import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nirvada_user/app/data/base_api.dart';

class HomeFuntion {
  static Future<void> candidateDetails(String id, String data) async {
    try {
      Uri uri =
          Uri.parse(BaseUrl.url + "/candidate_details/get_all_candidates");

      Map<String, String> body = {
        "id": id,
        "data": data,
      };

      final response = await http.post(
        uri,
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode(body),
      );

      print(response.statusCode);
      print(response.body);
    } catch (e) {
      print(e);
    }
  }
}
