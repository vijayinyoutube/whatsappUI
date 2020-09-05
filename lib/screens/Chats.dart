import 'package:flutter/material.dart';
import 'package:whatsapp/repository/ChatHistory.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: mychat.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    mychat[index].avatar,
                  ),
                  foregroundColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  radius: 30,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      (mychat[index].name),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    mychat[index].no_of_messages != null
                        ? Text(
                            (mychat[index].time),
                            style: TextStyle(color: Colors.green, fontSize: 14),
                          )
                        : Text(
                            (mychat[index].time),
                            style: TextStyle(fontSize: 14),
                          )
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          mychat[index].isSent == true
                              ? Icon(
                                  Icons.done_all_rounded,
                                  color: Colors.blue,
                                  size: 17.5,
                                )
                              : SizedBox(),
                          SizedBox(width: 2.5),
                          Container(
                            width: (MediaQuery.of(context).size.width) - 150,
                            child: Text(
                              (mychat[index].message),
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      mychat[index].isReceived == true
                          ? Container(
                              width: 25,
                              height: 25,
                              decoration: new BoxDecoration(
                                color: Colors.green,
                                borderRadius: new BorderRadius.circular(250),
                              ),
                              child: Center(
                                child: Text(
                                  (mychat[index].no_of_messages.toString()),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75, right: 10),
                child: Divider(
                  thickness: 0.85,
                ),
              ),
            ],
          );
        });
  }
}
