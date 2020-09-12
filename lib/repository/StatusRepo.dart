import 'package:flutter/material.dart';
import 'package:story_view/widgets/story_view.dart';

class StatusHistory {
  final String name;
  final String time;
  final String avatar;
  final String storyTitle;
  final List storyItems;

  StatusHistory({
    this.name,
    this.time,
    this.avatar,
    this.storyTitle,
    this.storyItems,
  });
}

List<StatusHistory> myStatus = [
  StatusHistory(
    name: "Ravi",
    time: "Just now",
    avatar: "assets/images/Ravi.webp",
    storyTitle: "Ravi",
    storyItems: <StoryItem>[
      StoryItem.pageImage(
        imageFit: BoxFit.contain,
        caption: "Flutter",
        url: "assets/images/Flutter.png",
        controller: null,
      ),
    ],
  ),
  StatusHistory(
    name: "Bobby",
    time: "10 minutes ago",
    avatar: "assets/images/Bobby.png",
    storyTitle: "Bobby",
    storyItems: <StoryItem>[
      StoryItem.text(
        title: "My First Story",
        backgroundColor: Colors.green,
        textStyle: TextStyle(
          fontSize: 25,
        ),
      ),
      StoryItem.text(
        title: "My Second Story",
        backgroundColor: Colors.blue,
        textStyle: TextStyle(
          fontSize: 25,
        ),
      ),
    ],
  ),
  StatusHistory(
    name: "Billy",
    time: "Today, 8:33 AM",
    avatar: "assets/images/Billy.png",
    storyTitle: "Billy",
    storyItems: <StoryItem>[
      StoryItem.pageImage(
        imageFit: BoxFit.contain,
        caption: "Flutter is Great 🥳",
        url: "assets/images/FlutterLogo.png",
        controller: null,
      ),
    ],
  ),
];
