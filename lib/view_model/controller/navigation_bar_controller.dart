import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pmt/models/issues_model.dart';
import 'package:pmt/view_model/controller/email_auth_controller.dart';

class NavigationBarController extends GetxController {
  RxInt page = 0.obs;

  final emailAuthController = Get.put(EmailAuthController());

  String baseUrl = "http://192.168.1.25:3001/v1";

  // Future<List<Result>> fetchData() async {
  //   final token = await emailAuthController.token;

  //   try {
  //     final response = await http.get(Uri.parse('$baseUrl/issues'), headers: {
  //       'Authorization': 'Bearer $token',
  //     });
  //     if (response.statusCode == 200) {
  //       var data = jsonDecode(response.body);
  //       final results = data['results'];
  //       return results;
  //     } else {
  //       throw Exception('Failed to load data');
  //     }
  //   } catch (e) {
  //     throw e.toString();
  //   }
  // }
}
