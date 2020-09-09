import 'package:flutter/material.dart';
import 'package:whatsapp/screen/Status_View_Bobby.dart';
import 'package:whatsapp/screen/Status_View_Ravi.dart';

class StatusPage extends StatefulWidget {
  StatusPage({Key key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
          SizedBox(height: 5),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RaviStatus(),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/Ravi.webp"),
              foregroundColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              radius: 30,
            ),
            title: Text(
              "Ravi",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "Just now",
                style: TextStyle(fontSize: 17.5, color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 75, right: 10),
            child: Divider(
              thickness: 0.85,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BobbyStatus(),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/Bobby.png"),
              foregroundColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              radius: 30,
            ),
            title: Text(
              "Bobby",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "10 minutes ago",
                style: TextStyle(fontSize: 17.5, color: Colors.grey),
              ),
            ),
          ),
        ],
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
