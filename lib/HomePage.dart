import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            indicatorColor: Colors.white,
            //   labelPadding: EdgeInsets.symmetric(horizontal: 1.0),
            tabs: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Icon(
                    Icons.camera_alt,
                    size: 20,
                  )),
                ),
              ),
              Container(
                height: 50,
                child: Center(
                  child: Text(
                    "CHATS",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
              ),
              Container(
                height: 50,
                child: Center(
                  child: Text(
                    "STATUS",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
              ),
              Container(
                height: 50,
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
              width: 15,
            ),
            Icon(
              Icons.settings,
              size: 27.5,
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        body: Center(child: Text('Press the button below!')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}