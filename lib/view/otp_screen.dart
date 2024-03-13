import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pmt/res/components/buttons.dart';
import 'package:pmt/res/components/otp_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final loginViewController = Get.put(());
  //
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Image.asset(
              'assets/images/byptLogo.png',
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
            const OtpFields(),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              width: double.infinity,
              loading: false,
              title: "Verify",
              onPress: () {},
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
                  onPressed: () {},
                  child: Text(
                    "Resend",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.blue, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
