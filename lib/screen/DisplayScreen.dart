import 'dart:io';

import 'package:flutter/material.dart';

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Displaying the picture'),
      ),
      body: Center(
        child: Image.file(File(imagePath), width: 250, height: 250),
      ),
    );
  }
}
