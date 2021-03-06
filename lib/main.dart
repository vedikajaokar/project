import 'package:flutter/material.dart';
import 'package:jarvis_object_detection_app/MySplashPage.dart';
import 'package:camera/camera.dart';
//import 'package:splashscreen/splashscreen.dart';

late List<CameraDescription> cameras;

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Object Detector App',

      home: MySplashPage(),
    );
  }
}

