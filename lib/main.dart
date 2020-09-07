import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/HomePage.dart';

var firstCamera;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();

  
  firstCamera = cameras.first;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        camera: firstCamera,
      ),
    );
  }
}
