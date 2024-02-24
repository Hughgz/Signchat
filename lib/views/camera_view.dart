import 'package:app_signchat/controller/scan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:camera/camera.dart';

class ViewCamera extends StatelessWidget {
  const ViewCamera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ScanController>(
        init: ScanController(),
        builder: (controller) {
          return controller.isCameraInitialized.value
              ? Stack(
                children: [
                  CameraPreview(controller.cameraController),
                  Positioned(
                    top: controller.y,
                    right: controller.x,
                    child: Container(
                      width: 1200,
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.green, width: 4.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                           Container(
                            color: Colors.white,
                            child: Text(controller.label))
                        ],
                      ),
                    ),
                  )
                ],
              )
              : const Center(
                  child: Text("Starting Recognition"),
                );
        },
      ),
    );
  }
}
