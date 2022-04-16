import 'package:flutter/material.dart';
import 'package:easy_share/home_page.dart';
import 'package:easy_share/scanning_page.dart';
import 'package:camera/camera.dart';



Future<void> main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first; //à modifier si besoin en fonction de ce qu'est la first
  runApp(MaterialApp(

    initialRoute: '/',
    routes:{
      '/': (context) => HomePage(),
      //'/scanning_page': (context) => TakePictureScreen(camera: firstCamera),
    },
  ));
}