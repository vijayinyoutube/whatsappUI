import 'package:flutter/material.dart';
import 'package:whatsapp/repository/CallRepo.dart';
import 'package:whatsapp/repository/ChatRepo.dart';

class Callpage extends StatefulWidget {
  Callpage({Key key}) : super(key: key);

  @override
  _CallpageState createState() => _CallpageState();
}

class _CallpageState extends State<Callpage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myCall.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(mychat[index].avatar),
                foregroundColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                radius: 30,
              ),
              title: Text(
                (mychat[index].name),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        myCall[index].incoming == true
                            ? myCall[index].didAttend == true
                                ? Icon(
                                    Icons.call_made,
                                    color: (Color.fromRGBO(14, 102, 85, 0.8)),
                                    size: 17.5,
                                  )
                                : Icon(
                                    Icons.call_made,
                                    color: Colors.red,
                                    size: 17.5,
                                  )
                            : myCall[index].didAttend == true
                                ? Icon(
                                    Icons.call_received,
                                    color: (Color.fromRGBO(14, 102, 85, 0.8)),
                                    size: 17.5,
                                  )
                                : Icon(
                                    Icons.call_received,
                                    color: Colors.red,
                                    size: 17.5,
                                  ),
                        SizedBox(
                          width: 2.5,
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.width) - 250,
                          child: Text(
                            (myCall[index].time),
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    myCall[index].callType == "call"
                        ? Container(
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(250),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.call,
                                size: 30,
                                color: (Color.fromRGBO(14, 102, 85, 0.8)),
                              ),
                            ),
                          )
                        : Container(
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(250),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.videocam,
                                size: 30,
                                color: (Color.fromRGBO(14, 102, 85, 0.8)),
                              ),
                            ),
                          ),
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
      },
    );
  }
}
