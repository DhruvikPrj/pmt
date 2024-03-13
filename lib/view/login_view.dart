// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pmt/res/components/buttons.dart';
// import 'package:pmt/res/components/otp_fields.dart';
// import 'package:pmt/view_model/controller/otp_view_controller.dart';

// class LoginView extends StatefulWidget {
//   const LoginView({super.key});

//   @override
//   State<LoginView> createState() => _LoginViewState();
// }

// class _LoginViewState extends State<LoginView> {
//   final otpViewController = Get.put(OtpViewController());
//   //final _formKey = GlobalKey<FormState>();
//   //
//   @override
//   Widget build(BuildContext context) {
//     //
//     // final height = MediaQuery.of(context).size.height;
//     // final width = MediaQuery.of(context).size.width;

//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 'assets/images/byptLogo.png',
//                 width: 200,
//               ),
//               // Image.network(`
//               //   'https://bypeopletechnologies.com/wp-content/uploads/2017/01/byPeople-Logo.png',
//               //   width: width * .6,
//               //   height: height * .3,
//               // ),`
//               const SizedBox(height: 50,),
//               Center(
//                 child: Text(
//                   "Verify your email",
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodyLarge!
//                       .copyWith(fontWeight: FontWeight.w700),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Center(
//                 child: Text(
//                   "Please enter 4 digit code sent to your mail:",
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodyMedium!
//                       .copyWith(color: Colors.black54),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const OtpFields(),
//               const SizedBox(
//                 height: 20,
//               ),
//               CustomButton(
//                 width: 400,
//                 loading: false,
//                 title: "Verify",
//                 onPress: () {},
//                 textColor: Colors.white,
//                 buttonColor: Colors.blue,
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Didn't recieve an email?",
//                     style: Theme.of(context)
//                         .textTheme
//                         .bodyMedium!
//                         .copyWith(color: Colors.black54),
//                   ),
//                   // const SizedBox(
//                   //   width: 5,
//                   // ),
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       "Resend",
//                       style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                           color: Colors.blue, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ],
//               )
//             ],
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
