// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class OtpTextField extends StatelessWidget {
//   final TextEditingController otpController;
//   final int textLength;

//   OtpTextField({
//     super.key,
//     required this.otpController,
//     this.textLength = 1, // Default to single character
//   });

//   List<TextEditingController> otpControllers =
//       List.generate(4, (index) => TextEditingController());

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 68,
//       width: 54,
//       child: TextFormField(
//         textAlign: TextAlign.center,
//         controller: otpController,
//         onChanged: (value) {
//           if (value.length == 1) {
//             FocusScope.of(context).nextFocus();
//           }
//         },
//         style: Theme.of(context).textTheme.bodyMedium,
//         keyboardType: TextInputType.number,
//         inputFormatters: [
//           LengthLimitingTextInputFormatter(1),
//           FilteringTextInputFormatter.digitsOnly,
//         ],
//         decoration: const InputDecoration(
//           hintText: "0",
//           hintStyle: TextStyle(color: Colors.black54, fontSize: 25),
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.all(
//                 Radius.circular(4.0),
//               ),
//               borderSide: BorderSide(color: Colors.blue)),
//           focusedBorder:
//               OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
//           border: OutlineInputBorder(
//               borderRadius: BorderRadius.all(
//                 Radius.circular(4.0),
//               ),
//               borderSide: BorderSide(color: Colors.blue)),
//         ),
//         cursorColor: Colors.blue,
//       ),
//     );
//   }
// }
