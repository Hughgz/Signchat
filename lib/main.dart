import 'package:app_signchat/controller/scan_controller.dart';
import 'package:app_signchat/views/camera_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  initGetComponents();
  runApp(const MyApp());
}

void initGetComponents() {
  Get.put(ScanController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SignChat',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DetectionPage(),
    );
  }
}