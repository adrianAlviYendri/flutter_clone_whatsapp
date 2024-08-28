// ignore: unused_import
import 'dart:ffi';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';

class CameraPreviewsScreen extends StatefulWidget {
  const CameraPreviewsScreen({super.key});

  @override
  State<CameraPreviewsScreen> createState() => _CameraPreviewsScreenState();
}

class _CameraPreviewsScreenState extends State<CameraPreviewsScreen> {
  CameraController? cameraController;

  @override
  void initState() {
    super.initState();
    availableCameras().then((cameras) {
      final camerasDescription = cameras.first;
      cameraController = CameraController(
        camerasDescription,
        ResolutionPreset.high,
      );
      cameraController?.initialize().then((_) {
        setState(() {});
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (cameraController != null) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.mainScreen.path);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(18),
          ),
          child: cameraController!.value.isInitialized
              ? CameraPreview(cameraController!)
              : const SizedBox.shrink(),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
