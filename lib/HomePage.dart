import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/screen/Calls/CallPage.dart';
import 'package:whatsapp/screen/Chats/ChatPage.dart';
import 'package:whatsapp/screen/Status/StatusPage.dart';

class MyHomePage extends StatefulWidget {
  // final CameraDescription camera;

  // MyHomePage({@required this.camera});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  File image;
  CameraController _controller;
  Future<void> _initializeControllerFuture;
  TabController _tabController;
  List<IconData> icons = <IconData>[
    (Icons.camera_alt),
    (Icons.message),
    (Icons.add),
    (Icons.call),
  ];

  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(length: icons.length, vsync: this, initialIndex: 1);
    // _controller = CameraController(
    //   widget.camera,
    //   ResolutionPreset.medium,
    // );
    // _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: (Color.fromRGBO(14, 102, 85, 0.8)),
          title: Text(
            "WhatsApp",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
          ),
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Center(
                  child: Icon(
                    Icons.camera_alt,
                    size: 20,
                  ),
                ),
              ),
              Tab(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "CHATS",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      ClipOval(
                        child: Container(
                          width: 22,
                          height: 22,
                          color: (Color.fromRGBO(14, 102, 85, 0.5)),
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "STATUS",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      ClipOval(
                        child: Container(
                          width: 8.5,
                          height: 8.5,
                          color: (Color.fromRGBO(14, 102, 85, 0.9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Center(
                  child: Text(
                    "CALLS",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            Icon(
              Icons.search,
              size: 27.5,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.more_vert,
              size: 27.5,
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(
              child: Text("Camera"),
            ),
            // Camerapage(
            //   camera: widget.camera,
            // ),
            Chatpage(),
            StatusPage(),
            Callpage(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: TabBarView(
            controller: _tabController,
            children: [
              GestureDetector(
                  child: Icon(icons[0]),
                  onTap: () async {
                    this.setState(() {});
                    image = await ImagePicker.pickImage(
                      source: ImageSource.camera,
                    );
                  }),
              Icon(icons[1]),
              Icon(icons[2]),
              Icon(icons[3]),
            ],
          ),
        ),
      ),
    );
  }
}
