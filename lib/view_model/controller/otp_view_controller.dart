import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpViewController extends GetxController {
//   //
//   final _api = LoginRepository();
//   //user preference
//   UserPreferences userPreferences = UserPreferences();
//   //
  List<TextEditingController> otpControllers =
      List.generate(4, (index) => TextEditingController());

  final otpFocusNode = FocusNode().obs;

  void validateOtp() {
    // String otp = '';
    // for (var controller in otpControllers) {
    // otp += controller.text;
  }
  // var emailController = ;
  // var res = EmailAuth.(receiverMail: emailController.text, userOTP: otp);
  // if (res) {
  //   print('OTP verified successfully');
  // } else {
  //   print('OTP verification failed');
  // }
}

//   RxBool loading = false.obs;

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

