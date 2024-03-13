import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pmt/data/repository/login_repository.dart';
// import 'package:pmt/view_model/controller/shared_preference/user_preferences.dart';

class LoginViewController extends GetxController {
  //
  final _api = LoginRepository();
  //user preference
  // UserPreferences userPreferences = UserPreferences();
  //
  final emailcontroller = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      "email": emailcontroller.value.text,
    };

    _api.loginApi(data).then((value) {
      loading.value = false;
      if (value['message'] == 'password is incorrect' ||
          value['message'] == 'User not exits!') {
        //print(value);
      } else {
        //
        // isLoggedIn = true;
        //
        // userPreferences
        //     .saveUser(userModel)
        //     .then((value) {})
        //     .onError((error, stackTrace) {
        //   print(error.toString());
        // });
        //print(value);
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      print(error.toString());
      // Text(error.toString());
      print(error.toString());
    });
  }
}
