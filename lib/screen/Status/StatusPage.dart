import 'package:flutter/material.dart';
import 'package:whatsapp/screen/Status/StatusViewpage.dart';

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
          titleBar("Recent updates"),
          SizedBox(height: 5),
          myStatusListTile(
            image: "assets/images/Ravi.webp",
            name: "Ravi",
            time: "Just now",
            statusno: 0,
          ),
          myDivider(),
          myStatusListTile(
            image: "assets/images/Bobby.png",
            name: "Bobby",
            time: "10 minutes ago",
            statusno: 1,
          ),
          SizedBox(height: 5),
          titleBar("Viewed updates"),
          SizedBox(height: 5),
          myStatusListTile(
            image: "assets/images/Billy.png",
            name: "Billy",
            time: "Today, 8:33 AM",
            statusno: 2,
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

  Widget myStatusListTile(
      {String image, String name, String time, int statusno}) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StatusViewPage(statusno: statusno),
          ),
        );
      },
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
        foregroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        radius: 30,
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(top: 5),
        child: Text(
          time,
          style: TextStyle(fontSize: 17.5, color: Colors.grey),
        ),
      ),
    );
  }
}

Widget myDivider() {
  return Padding(
    padding: const EdgeInsets.only(left: 75, right: 10),
    child: Divider(
      thickness: 0.85,
    ),
  );
}

Widget titleBar(String title) {
  return Container(
    height: 40,
    width: double.infinity,
    color: Colors.grey[100],
    child: Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 10,
      ),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 17.5,
            color: (Color.fromRGBO(18, 140, 126, 0.8)),
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}
