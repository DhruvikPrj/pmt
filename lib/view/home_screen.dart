import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) => Future(() => false),
      child: const Scaffold(
        body: Center(
          child: Text("Welcome to Homescreen"),
        ),
      ),
    );
  }
}

//Padding(
      //   padding: EdgeInsets.all(12.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(Icons.home),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(Icons.dashboard),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(Icons.notifications),
      //       ),
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(Icons.account_circle),
      //       ),
      //     ],
      //   ),
      // ),