import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pmt/view_model/controller/navigation_bar_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final Future<dynamic> futureData;

  final navigationBarController = Get.put(NavigationBarController());

  @override
  void initState() {
    super.initState();
    // futureData = navigationBarController.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Home Screen"),
          ),
        ),
        body: Expanded(
          flex: 1,
          child: Column(
            children: [
              FutureBuilder(
                future: futureData,
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    // Access the fetched data from snapshot.data
                    final data = snapshot.data;
                    print(data);
                    return GetBuilder<NavigationBarController>(
                      init: NavigationBarController(),
                      builder: (_) => Card(
                        margin: const EdgeInsets.all(8.0),
                        child: Text(data[0]['title']),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
