import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pmt/data/repository/login_repository.dart';

class EmailAuthController extends GetxController {
  //
  final _api = LoginRepository();



  final emailcontroller = TextEditingController().obs;
  final otpController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  String? email; // Store email after successful login

  void loginApi() {
    loading.value = true;
    Map data = {
      "email": emailcontroller.value.text,
    };

    _api.loginApi(data).then((value) {
      loading.value = false;
      if (value['message'] == 'password is incorrect' ||
          value['message'] == 'User not exits!') {
        print(value);
      } else {
        print(value['data']['user']['verificationCode']);
        email = data['email']; // Assign email only if successful
        print(email);
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      // print(error.toString());
    });
  }

  void validateOtp(String code) {
    if (email != null) {
      // Check if email is available before using
      Map data = {
        "email": email,
        "code": code,
      };
      _api.verifyLoginApi(data).then((value) {
        print(value);
      });
    } else {
      print("Email not available yet. Call loginApi first.");
    }
  }
}
