import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  StatusPage({Key key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10),
            ListTile(
              leading: Stack(
                overflow: Overflow.visible,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Alice.webp"),
                    foregroundColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    radius: 30,
                  ),
                  Positioned(
                    bottom: -2,
                    right: -2,
                    child: ClipOval(
                      child: Container(
                        color: Colors.green,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              title: Text(
                "My Status",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Tap to add status update",
                  style: TextStyle(fontSize: 17.5, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 10,
                ),
                child: Text(
                  "Recent updates",
                  style: TextStyle(
                      fontSize: 17.5,
                      color: (Color.fromRGBO(18, 140, 126, 0.8)),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 75, right: 2.5),
        child: ClipOval(
          child: Container(
            width: 50,
            height: 50,
            color: Colors.grey[300],
            child: Icon(Icons.edit),
          ),
        ),
      ),
    );
  }
}
