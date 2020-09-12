import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';
import 'package:whatsapp/repository/StatusRepo.dart';

class StatusViewPage extends StatefulWidget {
  final statusno;
  StatusViewPage({this.statusno});

  @override
  _StatusViewPageState createState() => _StatusViewPageState();
}

class _StatusViewPageState extends State<StatusViewPage> {
  final mycontroller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          StoryView(
            controller: mycontroller,
            storyItems: myStatus[widget.statusno].storyItems,
            inline: false,
            onComplete: () {
              Navigator.pop(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 35,
            ),
            child: Container(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StatusViewPage(),
                    ),
                  );
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(myStatus[widget.statusno].avatar),
                  foregroundColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  radius: 30,
                ),
                title: Text(
                  myStatus[widget.statusno].storyTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    myStatus[widget.statusno].time,
                    style: TextStyle(fontSize: 15, color: Colors.grey[350]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
