import 'package:flutter/material.dart';
import 'package:whatsapp/screens/Chats.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<IconData> icons = <IconData>[
    (Icons.camera),
    (Icons.message),
    (Icons.add),
    (Icons.call),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: icons.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
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
                  child: Text(
                    "CHATS",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
              ),
              Tab(
                child: Center(
                  child: Text(
                    "STATUS",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
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
            Center(child: Text("Camera")),
            ChatPage(),
            Center(child: Text("Status")),
            Center(child: Text("Calls")),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: TabBarView(
            controller: _tabController,
            children: [
              Icon(icons[0]),
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
