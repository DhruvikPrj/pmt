import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:pmt/data/repository/login_repository.dart';
import 'package:http/http.dart' as http;
import 'package:pmt/routes/routes_name.dart';

class EmailAuthController extends GetxController {
  final emailcontroller = TextEditingController().obs;
  final otpController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  // Store email after successful login

  Future<void> sendOtp() async {
    try {
      final response = await http.post(
        Uri.parse("http://192.168.1.112:3001/v1/auth/login"),
        body: {'email': emailcontroller.value.text},
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data['data']['user']['email']);
        print(data['data']['user']['verificationCode']);
      } else {}
    }
    //print(responseJson);
    catch (e) {
      print(e.toString());
    }
  }

  Future<void> validateOtp(String entredOtp) async {
    try {
      final response = await http.post(
        Uri.parse("http://192.168.1.112:3001/v1/auth/verify-code"),
        body: {
          'email': emailcontroller.value.text,
          'code': entredOtp,
        },
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        print(data['message']);
        Get.toNamed(RouteName.navBarScreen);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      Get.snackbar("error", e.toString());
    }
  }
}
