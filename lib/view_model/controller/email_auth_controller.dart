import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pmt/routes/routes_name.dart';

class EmailAuthController extends GetxController {
  final emailcontroller = TextEditingController().obs;
  final otpController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  String baseUrl = "http://192.168.1.25:3001/v1";
  RxString token = ''.obs;

  // Store email after successful login

  Future<void> sendOtp() async {
    try {
      final response = await http.post(
        Uri.parse("$baseUrl/auth/login"),
        body: {'email': emailcontroller.value.text},
      );
      var data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        print(data['data']['user']['email']);
        print(data['data']['user']['verificationCode']);

        //navigate
        Get.offAllNamed(RouteName.otpScreen);
      } else {
        Get.snackbar("Error !", data['message']);
      }
    }
    //print(responseJson);
    catch (e) {
      Get.snackbar(
        "Error !",
        "User Not Exists...",
      );
    }
  }

  Future<void> validateOtp(String entredOtp) async {
    try {
      final response = await http.post(
        Uri.parse("$baseUrl/auth/verify-code"),
        body: {
          'email': emailcontroller.value.text,
          'code': entredOtp,
        },
      );
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        print(data['message']);
        //token save
        token = data['data']['tokens']['access']['token'];
        print(token);
        Get.offAllNamed(RouteName.navBarScreen);
      } else {
        Get.snackbar("error", data['message']);
        print(response.statusCode);
      }
    } catch (e) {
      Get.snackbar("error", e.toString());
    }
  }
}
