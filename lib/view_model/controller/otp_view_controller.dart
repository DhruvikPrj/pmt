import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpViewController extends GetxController {
//   //
//   final _api = LoginRepository();
//   //user preference
//   UserPreferences userPreferences = UserPreferences();
//   //
  final otpController = TextEditingController().obs;

  final otpFocusNode = FocusNode().obs;

//   RxBool loading = false.obs;

  void loginApi() {
    //loading.value = true;
    Map data = {
      "email": otpController.value.text,
    };

//     _api.loginApi(data).then((value) {
//       loading.value = false;
//       if (value['message'] == 'password is incorrect' ||
//           value['message'] == 'User not exits!') {
//         //print(value);
//       } else {
//         //
//         isLoggedIn = true;
//         //
//         userPreferences
//             .saveUser(userModel)
//             .then((value) {})
//             .onError((error, stackTrace) {
//           print(error.toString());
//         });
//         //print(value);
//       }
//     }).onError((error, stackTrace) {
//       loading.value = false;
//       //print(error.toString());
//       // Text(error.toString());
//       print(error.toString());
//     });
//   }
  }
}