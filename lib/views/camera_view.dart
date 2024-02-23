import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_signchat/controller/scan_controller.dart'; // Import your ScanController

class DetectionPage extends StatelessWidget {
  final ScanController scanController = Get.find();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Object Detection'),
      ),
      body: Center(
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Detected Object: ${scanController.label}'),
              SizedBox(height: 16),
              Text('Bounding Box: x=${scanController.x}, y=${scanController.y}, w=${scanController.w}, h=${scanController.h}'),
            ],
          );
        }),
      ),
    );
  }
}
