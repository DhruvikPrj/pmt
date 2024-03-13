// import 'package:flutter/material.dart';

// import 'package:get/get.dart';
// import 'package:pmt/res/components/buttons.dart';
// import 'package:pmt/res/components/textfields_otp.dart';
// import 'package:pmt/view_model/controller/otp_view_controller.dart';
// // import 'package:pmt/res/app_colors/app_color.dart';
// // import 'package:pmt/res/components/buttons.dart';

// class OtpView extends StatefulWidget {
//   const OtpView({super.key});

//   @override
//   State<OtpView> createState() => _OtpViewState();
// }

// class _OtpViewState extends State<OtpView> {
// //
//   final otpViewController = Get.put(OtpViewController());
//   final _formKey = GlobalKey<FormState>();

//   @override
//   void dispose() {
//     // Release resources here
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     //

//     //
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: true,
//         backgroundColor: Colors.white,
//         body: Center(
//           child: Container(
//             alignment: Alignment.center,
//             height: height,
//             width: width,
//             constraints: BoxConstraints(
//               maxHeight: height,
//               maxWidth: 500,
//               minWidth: 300,
//             ),
//             child: Container(
//               child: Column(
//                 children: [
//                   SizedBox(
//                     width: width * .6,
//                     height: height * .3,
//                     child: Image.network(
//                       'https://bypeopletechnologies.com/wp-content/uploads/2017/01/byPeople-Logo.png',
//                       width: width * .6,
//                       height: height * .3,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 50,
//                   ),
//                   Center(
//                     child: Text(
//                       "Verify your email",
//                       style: Theme.of(context)
//                           .textTheme
//                           .bodyLarge!
//                           .copyWith(fontWeight: FontWeight.w700),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Center(
//                     child: Text(
//                       "Please enter 4 digit code sent to your mail:",
//                       style: Theme.of(context)
//                           .textTheme
//                           .bodyMedium!
//                           .copyWith(color: Colors.black54),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Form(
//                     key: _formKey,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         OtpTextField(
//                           otpController: otpViewController.otpController.value,
//                           textLength: 100,
//                         ),
//                         OtpTextField(
//                           otpController: otpViewController.otpController.value,
//                           textLength: 100,
//                         ),
//                         OtpTextField(
//                           otpController: otpViewController.otpController.value,
//                           textLength: 100,
//                         ),
//                         OtpTextField(
//                           otpController: otpViewController.otpController.value,
//                           textLength: 100,
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   CustomButton(
//                     width: double.infinity,
//                     loading: false,
//                     title: "Verify",
//                     onPress: () {},
//                     textColor: Colors.white,
//                     buttonColor: Colors.blue,
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Didn't recieve an email?",
//                         style: Theme.of(context)
//                             .textTheme
//                             .bodyMedium!
//                             .copyWith(color: Colors.black54),
//                       ),
//                       // const SizedBox(
//                       //   width: 5,
//                       // ),
//                       TextButton(
//                         onPressed: () {},
//                         child: Text(
//                           "Resend",
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodyMedium!
//                               .copyWith(
//                                   color: Colors.blue,
//                                   fontWeight: FontWeight.w400),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         bottomNavigationBar: const BottomAppBar(
//           color: Colors.blue,
//           height: 60,
//           child: Center(
//             child: Text(
//               '© 2024 BYPT HUB . Crafted with \n By People Technologies',
//               style: TextStyle(fontSize: 12.0, color: Colors.white),
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
