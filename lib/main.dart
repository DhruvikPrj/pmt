import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pmt/routes/routes.dart';
import 'package:pmt/view/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //root
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      getPages: AppRoutes.appRoutes(),
      home: const LoginScreen(),
    );
  }
}
