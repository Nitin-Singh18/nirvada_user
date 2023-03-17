import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nirvada_user/app/data/base_api.dart';

class RegisterFuntions {
  static Future<void> registerUser(
      String voterIdNumber, String mobileNumber) async {
    try {
      Uri uri = Uri.parse(BaseUrl.url + "user/signup");

      Map<String, String> body = {
        "voter_id_number": voterIdNumber,
        "mobile_number": mobileNumber,
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
