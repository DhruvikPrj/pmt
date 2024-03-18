import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pmt/res/components/buttons.dart';
import 'package:pinput/pinput.dart';
import 'package:pmt/view_model/controller/email_auth_controller.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  //
  final emailAuthController = Get.put(EmailAuthController());

  //
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(5.0),
              margin: const EdgeInsets.only(left: 20, right: 20),
              constraints: const BoxConstraints(
                maxWidth: 500,
                minWidth: 400,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'images/byptLogo.png',
                    width: 200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Verify your email",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Please enter 4 digit code sent to your mail:",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.black54),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Pinput(
                    controller: emailAuthController.otpController.value,
                    length: 4, // Change this to your desired OTP length
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    width: double.infinity,
                    loading: false,
                    title: "Verify",
                    onPress: () {
                      emailAuthController.validateOtp(
                          emailAuthController.otpController.value.text);
                    },
                    textColor: Colors.white,
                    buttonColor: Colors.blue,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't recieve an email?",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.black54),
                      ),
                      // const SizedBox(
                      //   width: 5,
                      // ),
                      TextButton(
                        onPressed: () {
                          emailAuthController.sendOtp();
                        },
                        child: Text(
                          "Resend",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
