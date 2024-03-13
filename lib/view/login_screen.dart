import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pmt/res/app_colors/app_color.dart';
import 'package:pmt/res/components/buttons.dart';
import 'package:pmt/view/otp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //
  //EmailAuthController emailAuthController = EmailAuthController();
  final _formKey = GlobalKey<FormState>();
  //
  // bool validateEmail() {
  //   if (_formKey.currentState!.validate()) {
  //     return null; // No errors
  //   } else {
  //     return 'Please fix the errors above.';
  //   }
  // }
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    constraints: const BoxConstraints(
                      maxWidth: 500,
                      minWidth: 400,
                    ),
                    child: Column(
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
                            "Welcome Back",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "Sign in to continue to BYPT HUB.",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: Colors.black54),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Form(
                          key: _formKey,
                          child: Container(
                            height: 50,
                            margin: const EdgeInsets.all(20),
                            child: TextFormField(
                              controller: emailController,
                              //checks is email has empty value or not!
                              validator: (value) {
                                if (value!.isEmpty) {
                                  const Text(
                                    "Please enter email and password",
                                    style:
                                        TextStyle(color: Appcolor.warningTitle),
                                  );
                                }
                                return;
                              },
                              decoration: InputDecoration(
                                labelText: 'Enter Email',
                                labelStyle: const TextStyle(color: Colors.blue),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black54),
                                ),
                              ),
                              cursorColor: Colors.blue,
                              cursorHeight: 15,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        CustomButton(
                          height: 40,
                          loading: false,
                          title: "Log In",
                          onPress: () {
                            Get.to(const OtpScreen());
                            //print("Login Button Pressed");
                            // if (_formKey.currentState!.validate()) {
                            //   loginViewController.loginApi();
                            // }
                          },
                          textColor: Colors.white,
                          buttonColor: Colors.blue,
                          width: double.infinity,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          color: Colors.blue,
          height: 60,
          child: Center(
            child: Text(
              '© 2024 BYPT HUB . Crafted with \n ♥️ By People Technologies',
              style: TextStyle(fontSize: 12.0, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
