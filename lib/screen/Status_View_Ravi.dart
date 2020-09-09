import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';

class RaviStatus extends StatefulWidget {
  RaviStatus({Key key}) : super(key: key);

  @override
  _RaviStatusState createState() => _RaviStatusState();
}

class _RaviStatusState extends State<RaviStatus> {
  final mycontroller = StoryController();
  final List<StoryItem> mystoryItems = [
    StoryItem.text(
      title: "My Ravi First Status",
      backgroundColor: Colors.green,
      textStyle: TextStyle(
        fontSize: 25,
      ),
    ),
    StoryItem.text(
      title: "My Second Status",
      backgroundColor: Colors.blue,
      textStyle: TextStyle(
        fontSize: 25,
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          StoryView(
            controller: mycontroller,
            storyItems: mystoryItems,
            inline: false,
            onComplete: () {
              Navigator.pop(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Container(
              child: ListTile(
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
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "Just now",
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
