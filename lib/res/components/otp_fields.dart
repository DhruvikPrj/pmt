import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:http/http.dart' as http;
import 'package:pmt/data/network/network_api.dart';
import 'package:pmt/res/app_url/app_url.dart';

class OtpFields extends StatefulWidget {
  const OtpFields({super.key});

  @override
  State<OtpFields> createState() => _OtpFieldsState();
}

class _OtpFieldsState extends State<OtpFields> {
//
  final _api = NetWorkApiServices();

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      hasCustomInputDecoration: true,
      numberOfFields: 4,
      autoFocus: true,
      decoration: const InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
      ),
      borderColor: Colors.blue,
      //set to true to show as box or false to show as dash
      showFieldAsBox: true,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {
        _api.postApi(verificationCode, AppAPIUrl.loginApiUrl);
      }, // end onSubmit
    );
  }
}
