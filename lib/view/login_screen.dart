import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pmt/res/components/buttons.dart';
import 'package:pmt/view/otp_screen.dart';
import 'package:pmt/view_model/controller/email_auth_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //
  EmailAuthController emailAuthController = EmailAuthController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailAuthController.dispose();
    super.dispose();
  }

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
                    'assets/images/byptLogo.png',
                    width: 200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Welcome Back",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.w800),
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
                    child: TextFormField(
                      controller: emailAuthController.emailcontroller.value,
                      cursorColor: Colors.blue,
                      keyboardType: TextInputType.emailAddress,
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
                      //checks is email is valid or not!
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email address.';
                        } else if (!RegExp(
                                r"^[a-zA-Z0-9.a-z%+_]+@[a-z]+\.[a-z]+$")
                            .hasMatch(value)) {
                          return 'Please enter a valid email address.';
                        }
                        return null; // No errors
                      },
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  CustomButton(
                    height: 40,
                    loading: false,
                    title: "Log In",
                    onPress: () {
                      if (_formKey.currentState!.validate()) {
                        emailAuthController.loginApi();
                        Get.to(const OtpScreen());
                      } else {
                        return;
                      }
                    },
                    textColor: Colors.white,
                    buttonColor: Colors.blue,
                    width: double.infinity,
                  ),
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
