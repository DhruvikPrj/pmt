import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pmt/res/app_colors/app_color.dart';
import 'package:pmt/res/components/buttons.dart';
import 'package:pmt/view_model/controller/login_view_controller.dart';
import 'package:pmt/view_model/otp_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
//
  final loginViewController = Get.put(LoginViewController());
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // Release resources here
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    //
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            alignment: Alignment.center,
            height: height,
            width: width,
            constraints: BoxConstraints(
              maxHeight: height,
              maxWidth: 500,
              minWidth: 300,
            ),
            child: Column(
              children: [
                Image.network(
                  'https://bypeopletechnologies.com/wp-content/uploads/2017/01/byPeople-Logo.png',
                  width: width * .6,
                  height: height * .3,
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
                Center(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          margin: const EdgeInsets.all(20),
                          child: TextFormField(
                            controller:
                                loginViewController.emailcontroller.value,

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
                            // onFieldSubmitted: (value) {
                            //   Utils.fieldFocusChange(
                            //       context,
                            //       loginViewController.emailFocusNode.value,
                            //       loginViewController.passwordFocusNode.value);
                            // },
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
                        const SizedBox(height: 20.0),
                        CustomButton(
                          height: 40,
                          loading: false,
                          title: "Log In",
                          onPress: () {
                            Get.to(const OtpView());
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
                  ),
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
            '© 2024 BYPT HUB . Crafted with \n By People Technologies',
            style: TextStyle(fontSize: 12.0, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
