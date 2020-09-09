import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';

class BillyStatus extends StatefulWidget {
  BillyStatus({Key key}) : super(key: key);

  @override
  _BillyStatusState createState() => _BillyStatusState();
}

class _BillyStatusState extends State<BillyStatus> {
  final mycontroller = StoryController();
  final List<StoryItem> mystoryItems = [
    StoryItem.pageImage(
        caption: "Flutter is Great 🥳",
        url: "assets/images/FlutterLogo.png",
        controller: null),
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
                      builder: (context) => BillyStatus(),
                    ),
                  );
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Billy.png"),
                  foregroundColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  radius: 30,
                ),
                title: Text(
                  "Billy",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "Today, 8:33 AM",
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
