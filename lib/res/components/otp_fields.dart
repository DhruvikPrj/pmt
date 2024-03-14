import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:get/get.dart';
import 'package:pmt/view_model/controller/email_auth_controller.dart';

class OtpFields extends StatefulWidget {
  const OtpFields({super.key});

  @override
  State<OtpFields> createState() => _OtpFieldsState();
}

class _OtpFieldsState extends State<OtpFields> {
  //
  final emailAuthController = Get.put(EmailAuthController());

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 6, // Change this to your desired OTP length
      onChanged: (value) {
        Get.find<EmailAuthController>().otpController.value.text = value;
      },
    );
  }
}
//dhruvik.prajapati@bypeopletechnologies.com