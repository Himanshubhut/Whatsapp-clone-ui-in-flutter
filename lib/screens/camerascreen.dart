import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen>
    with WidgetsBindingObserver {
  CameraController? _Controller;
  XFile? image;
  late final List<CameraDescription> _cameras;
  bool _isrecording = false;

  @override
  void initState() {
    loadCamera();
    super.initState();
  }

  loadCamera() async {
    _cameras = await availableCameras();
    if (_cameras != null) {
      _Controller = CameraController(_cameras![0], ResolutionPreset.max);

      _Controller!.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    } else {
      print("no camera found");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      child: _Controller == null
                          ? const Center(
                              child: Text("Loading camera...."),
                            )
                          : !_Controller!.value.isInitialized
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : CameraPreview(_Controller!)),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton.icon(
                        onPressed: () async {
                          try {
                            if (_Controller != null) {
                              if (_Controller!.value.isInitialized) {
                                image = await _Controller!.takePicture();
                                setState(() {});
                              }
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                        icon: Icon(Icons.camera),
                        label: Text("CLICK")),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: image == null
                    ? Text("no image clicked")
                    : Image.file(
                        File(image!.path),
                        height: MediaQuery.of(context).size.height,
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
