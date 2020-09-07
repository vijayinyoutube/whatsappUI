class ChatHistory {
  final String name;
  final String message;
  final String time;
  final bool isReceived;
  final bool isSent;
  final String avatar;
  final int no_of_messages;

  ChatHistory(
      {this.name,
      this.message,
      this.time,
      this.isReceived,
      this.isSent,
      this.avatar,
      this.no_of_messages});
}

List<ChatHistory> mychat = [
  ChatHistory(
    name: "Alice",
    message: " 👋  GM...",
    time: "11:30 AM",
    isReceived: true,
    isSent: false,
    no_of_messages: 1,
    avatar: "assets/images/Alice.webp",
  ),
  ChatHistory(
    name: "Bob",
    message: "hey! Nice UI👍",
    time: "9:30 AM",
    isReceived: true,
    isSent: false,
    no_of_messages: 2,
    avatar: "assets/images/Bob.webp",
  ),
  ChatHistory(
    name: "Richard",
    message: "Do you like the video?",
    time: "8:00 AM",
    isReceived: false,
    isSent: true,
    avatar: "assets/images/Richard.webp",
  ),
  ChatHistory(
    name: "Raju",
    message: "hai Vijay! GM... 👋",
    time: "yesterday",
    isReceived: true,
    isSent: false,
    no_of_messages: 1,
    avatar: "assets/images/Raju.webp",
  ),
  ChatHistory(
    name: "Robert Bell",
    message: "Thanks, Subscribe for more awesome content.",
    time: "Thursday",
    isReceived: false,
    isSent: true,
    avatar: "assets/images/Robert.png",
  ),
  ChatHistory(
    name: "Flutter Group",
    message: "😀😀",
    time: "Thursday",
    isReceived: false,
    isSent: true,
    avatar: "assets/images/group.png",
  ),
  ChatHistory(
    name: "Santy",
    message: "😋 😛 😝",
    time: "11/08/2020",
    isReceived: false,
    isSent: true,
    avatar: "assets/images/Santy.png",
  ),
  ChatHistory(
    name: "Ravi",
    message: "Okay",
    time: "15/09/2020",
    isReceived: false,
    isSent: true,
    avatar: "assets/images/Ravi.webp",
  ),
];
